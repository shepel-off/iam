from django.conf.urls.defaults import *
from iam.users.models import Profile

info_dict = {
    'queryset': Profile.objects.all()
}

urlpatterns = patterns('',
    url(r'^$', 'django.views.generic.list_detail.object_list', info_dict, name='iam-users'),
    (r'^(?P<object_id>\d+)/$', 'django.views.generic.list_detail.object_detail', info_dict),
)
