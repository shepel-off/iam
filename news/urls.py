from django.conf.urls.defaults import *
from iam.news.models import News

info_dict = {
    'queryset': News.objects.order_by('date').reverse(),
    'paginate_by': 5,
}

urlpatterns = patterns('',
    url(r'^$', 'django.views.generic.list_detail.object_list', dict(info_dict, page=1), name='iam-news'),
    url(r'^page(?P<page>[0-9]+)/$', 'django.views.generic.list_detail.object_list', info_dict, name='iam-news-page'),
    url(r'^add/$', 'iam.news.views.add', name='news-add'),
    url(r'^(?P<news_id>\d+)/edit/$', 'iam.news.views.edit', name='news-edit'),
    url(r'^(?P<news_id>\d+)/delete/$', 'iam.news.views.delete', name='news-delete'),
)
