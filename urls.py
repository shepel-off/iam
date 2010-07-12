from django.conf.urls.defaults import *
from django.contrib import admin

from iam.news.models import News

admin.autodiscover()

urlpatterns = patterns('',
    # Example:
    # (r'^iam/', include('iam.foo.urls')),

    # Uncomment the admin/doc line below and add 'django.contrib.admindocs' 
    # to INSTALLED_APPS to enable admin documentation:
    # Uncomment the next line to enable the admin:
     url(r'^$', 'django.views.generic.simple.redirect_to', {'url': '/news/'}, name='iam-root'),
     (r'^admin/', include(admin.site.urls)),
     (r'^users/', include('iam.users.urls')),
     (r'^news/', include('iam.news.urls')),
     (r'^labs/', include('iam.labs.urls')),
     url(r'^login/', 'iam.authentication.views.login', name='iam-login'),
     (r'^logout/', 'django.contrib.auth.views.logout'),
     (r'^publications/', include('iam.publications.urls')),
     (r'^admin/doc/', include('django.contrib.admindocs.urls')),
    # For tinymce package
)

from django.conf import settings
if 'rosetta' in settings.INSTALLED_APPS:
    urlpatterns += patterns ('',
        url(r'^rosetta/', include('rosetta.urls')),
        )
