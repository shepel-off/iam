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

def is_author(user, news_id):
    return user.id == News.objects.get(pk=int(news_id)).author.user.id

def edit_or_add(request, news_id):
    entry = News.objects.get(pk=news_id) if news_id else News()
    readableErrors = {}
    if request.method == 'POST':
        form = NewsForm(request.POST, instance=entry)
        if form.is_valid():
            if news_id:
                news_entry = form.save(commit=True)
            else:
                news_entry = form.save(commit=False)
                news_entry.date = datetime.datetime.now()
                news_entry.author = request.user.get_profile()
            news_entry.save()
            return redirect('/news/')
        else:
            readableErrors.update((unicode(form.base_fields[key].label), form.errors[key].as_text()) for key in form.errors.keys())
    else:
        form = NewsForm(instance=entry)
    return render_to_response('news/add.html', {
        'form': form,
        'errors': readableErrors,
        'news_id': news_id,}, 
        context_instance=RequestContext(request))

@login_required
def add(request):
    return edit_or_add(request, 0)

@login_required
@user_passes_test(is_author)
def edit(request, news_id):
    return edit_or_add(request, int(news_id))

@login_required
@user_passes_test(is_author)
def delete(request, news_id):
    news_id = int(news_id)
    entry = News.objects.get(pk=news_id)
    entry.delete()
    return redirect('/news/')
