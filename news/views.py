# -*- coding: utf-8 -*-
from django import forms
from iam.news.models import News
from tinymce.widgets import TinyMCE
from django.shortcuts import render_to_response, redirect
from django.contrib.auth.decorators import login_required, user_passes_test
from django.template import RequestContext
from django.http import HttpResponseForbidden

import datetime

class NewsForm(forms.ModelForm):
    body = forms.CharField(widget=TinyMCE(
        attrs={'cols': 80, 'rows': 30, 'theme': 'advanced'},
        ))

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
            return redirect('/news/')
    f = NewsForm()
    return render_to_response('news/add.html', {'form': f}, context_instance=RequestContext(request))

@login_required
def edit(request, news_id):
    news_id = int(news_id)
    entry = News.objects.get(pk=news_id)
    if request.user.id != entry.author.user.id:
        return HttpResponseForbidden(u'Доступ запрещён')
        
    if request.method == 'POST':
        f = NewsForm(request.POST, instance=entry)
        if f.is_valid():
            f.save()
            return redirect('/news/')
    f = NewsForm(instance=entry)
    return render_to_response('news/edit.html', {'form': f, 'entry_id': news_id}, context_instance=RequestContext(request))

@login_required
def delete(request, news_id):
    news_id = int(news_id)
    entry = News.objects.get(pk=news_id)
    if request.user.id != entry.author.user.id:
        return HttpResponseForbidden(u'Доступ запрещён')
    entry.delete()
    return redirect('/news/')
