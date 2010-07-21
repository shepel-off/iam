from django.conf.urls.defaults import *
from iam.labs.models import LabGroup, Laboratory

info_dict = {
    'queryset': LabGroup.objects.all()
}

info_dict_lab = {
    'queryset': Laboratory.objects.all()
}

urlpatterns = patterns('',
    url(r'^$', 'django.views.generic.list_detail.object_list', info_dict, name='iam-labs'),
    url(r'^(?P<object_id>\d+)/$', 'django.views.generic.list_detail.object_detail', info_dict_lab, name='lab-detail'),
    url(r'^(?P<lab_id>\d+)/edit/$', 'iam.labs.views.edit', name='lab-edit'),
)
