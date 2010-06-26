from django.conf.urls.defaults import *
from iam.news.models import News

info_dict = {
    'queryset': News.objects.all()
}

urlpatterns = patterns('',
    url(r'^$', 'django.views.generic.list_detail.object_list', info_dict, name='iam-news'),
    url(r'^add/$', 'iam.news.views.add', name='news-add'),
)
