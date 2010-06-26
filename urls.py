from django.conf.urls.defaults import *


# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Example:
    # (r'^iam/', include('iam.foo.urls')),

    # Uncomment the admin/doc line below and add 'django.contrib.admindocs' 
    # to INSTALLED_APPS to enable admin documentation:
     (r'^users/', include('iam.users.urls')),
     (r'^news/', include('iam.news.urls')),
     (r'^login/', 'django.contrib.auth.views.login'),
     (r'^logout/', 'django.contrib.auth.views.logout'),
     (r'^admin/doc/', include('django.contrib.admindocs.urls')),
     url(r'^$', 'django.views.generic.simple.direct_to_template', {'template': 'start.html'}, name="iam-root"),

    # For tinymce package
     (r'^tinymce/', include('tinymce.urls')),

    # Uncomment the next line to enable the admin:
     (r'^admin/', include(admin.site.urls)),
)
