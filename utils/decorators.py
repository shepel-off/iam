try:
    from functools import update_wrapper, wraps
except ImportError:
    from django.utils.functional import update_wrapper, wraps  # Python 2.4 fallback.
from django.http import HttpResponseRedirect
from django.contrib.auth import REDIRECT_FIELD_NAME
from django.utils.decorators import available_attrs
from django.utils.http import urlquote
# the import below is needed only for old versions

def user_passes_test(test_func, login_url=None, redirect_field_name=REDIRECT_FIELD_NAME):
    """
    Modification of django's standard user_passes_test decorator, the main
    difference is that test_func receives all arguments instead of only the user
    """
    if not login_url:
        from django.conf import settings
        login_url = settings.LOGIN_URL

    def decorator(view_func):
        def _wrapped_view(request, *args, **kwargs):
            if test_func(request.user, *args, **kwargs):
                return view_func(request, *args, **kwargs)
            path = urlquote(request.get_full_path())
            tup = login_url, redirect_field_name, path
            return HttpResponseRedirect('%s?%s=%s' % tup)
        return wraps(view_func, assigned=available_attrs(view_func))(_wrapped_view)
    return decorator

