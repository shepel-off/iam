# -*- coding: utf-8 -*-
from django import forms
from iam.news.models import News
from django.shortcuts import render_to_response, redirect
from django.contrib.auth.decorators import login_required, user_passes_test
from django.template import RequestContext
from django.http import HttpResponseForbidden, HttpResponse
from iam.utils.decorators import user_passes_test
from tinymce.widgets import TinyMCE
from django.utils import simplejson as json

import datetime

class NewsForm(forms.ModelForm):
    body = forms.CharField(widget=TinyMCE())
    class Meta:
        model = News
        fields = ('title', 'body')

@login_required
def add(request):
    if request.method == 'POST':
        f = NewsForm(request.POST)
        if f.is_valid():
            news_entry = f.save(commit=False)
            news_entry.date = datetime.datetime.now()
            news_entry.author = request.user.get_profile()
            news_entry.save()
            return HttpResponse(json.dumps({'errors': 0, 'msg': 'Новость добавлена'}), mimetype='application/json', status = 200)
    f = NewsForm()
    return render_to_response('news/add.html', {'form': f, 'media': str(f.media)}, context_instance=RequestContext(request))

def is_author(user, news_id):
    return user.id == News.objects.get(pk=int(news_id)).author.user.id

@login_required
@user_passes_test(is_author)
def edit(request, news_id):
    news_id = int(news_id)
    entry = News.objects.get(pk=news_id)
    if request.method == 'POST':
        f = NewsForm(request.POST, instance=entry)
        if f.is_valid():
            f.save()
            return redirect('/news/')
    f = NewsForm(instance=entry)
    return render_to_response('news/edit.html',
                              {'form': f,
                               'entry_id': news_id},
                              context_instance=RequestContext(request))

@login_required
@user_passes_test(is_author)
def delete(request, news_id):
    news_id = int(news_id)
    entry = News.objects.get(pk=news_id)
    entry.delete()
    return redirect('/news/')
