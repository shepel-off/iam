# -*- coding: utf-8 -*-
from django import forms
from django.http import HttpResponseForbidden, HttpResponse
from django.shortcuts import render_to_response, redirect
from django.contrib.auth.decorators import login_required
from django.template import RequestContext
from django.utils import simplejson as json

from iam.news.models import News
from iam.utils.decorators import user_passes_test

import datetime

class NewsForm(forms.ModelForm):
    class Meta:
        model = News
        fields = ('title', 'body')

@login_required
def add(request):
    if request.method == 'POST':
        form = NewsForm(request.POST)
        if form.is_valid():
            news_entry = form.save(commit=False)
            news_entry.date = datetime.datetime.now()
            news_entry.author = request.user.get_profile()
            news_entry.save()
            if not request.is_ajax():
                return redirect('/news/')
            return HttpResponse(json.dumps(
                {'errors': 0, 
                 'msg': 'Новость добавлена'}), 
                mimetype='application/json', status=200)
    return render_to_response('news/add.html' if request.is_ajax() else 'news/nojs_add.html', 
            {'form': NewsForm()}, 
            context_instance=RequestContext(request))

def is_author(user, news_id):
    return user.id == News.objects.get(pk=int(news_id)).author.user.id

@login_required
@user_passes_test(is_author)
def edit(request, news_id):
    news_id = int(news_id)
    entry = News.objects.get(pk=news_id)
    if request.method == 'POST':
        form = NewsForm(request.POST, instance=entry)
        if form.is_valid():
            form.save()
            return redirect('/news/')
    form = NewsForm(instance=entry)
    return render_to_response('news/edit.html',
            {'form': form,
             'entry_id': news_id},
            context_instance=RequestContext(request))

@login_required
@user_passes_test(is_author)
def delete(request, news_id):
    news_id = int(news_id)
    entry = News.objects.get(pk=news_id)
    entry.delete()
    return redirect('/news/')
