from django.conf.urls.defaults import *
from iam.users.models import Profile

info_dict = {
    'queryset': Profile.objects.all()
}

urlpatterns = patterns('',
#    url(r'^$', 'django.views.generic.list_detail.object_list', info_dict, name='iam-users'),
#    url(r'^(?P<object_id>\d+)/$', 'django.views.generic.list_detail.object_detail', info_dict, name='profile-detail'),
    url(r'^(?P<pub_id>\d+)/edit/$', 'iam.publications.views.editpublication', name='publication-edit'),
    url(r'^(?P<pub_id>\d+)/delete/$', 'iam.publications.views.delete', name='publication-delete'),
    url(r'^add/$', 'iam.publications.views.addpublication', name='publication-add'),
)
