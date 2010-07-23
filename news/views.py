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
    return edit_or_add(request, 0)

def is_author(user, news_id):
    return user.id == News.objects.get(pk=int(news_id)).author.user.id

def edit_or_add(request, news_id):
    entry = News.objects.get(pk=news_id) if news_id else News()
    readableErrors = {}
    if request.method == 'POST':
        form = NewsForm(request.POST, instance=entry)
        if form.is_valid():
            news_entry = form.save(commit=(news_id != 0))
            if not news_id:
                news_entry.date = datetime.datetime.now()
                news_entry.author = request.user.get_profile()
            news_entry.save()
            if not request.is_ajax():
                return redirect('/news/')
            return HttpResponse(json.dumps({ 'msg': 'Новость добавлена'}), 
                mimetype='application/json', status=200)
        else:
            readableErrors.update( (unicode(form.base_fields[key].label), form.errors[key].as_text()) for key in form.errors.keys() )
            if request.is_ajax():
                return HttpResponse(json.dumps(
                    {'errors': [u'{0}: {1}'.format(key, val[2:]) for key, val in readableErrors.items()] }),
                    mimetype='application/json', status=200)
    else:
        form = NewsForm(instance=entry)
    return render_to_response('news/add.html' if request.is_ajax() else 'news/nojs_add.html', {
        'form': form,
        'errors': readableErrors,
        'news_id': news_id,}, 
        context_instance=RequestContext(request))


@login_required
@user_passes_test(is_author)
def edit(request, news_id):
    return edit_or_add(request, int(news_id))
    '''news_id = int(news_id)
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
            context_instance=RequestContext(request))'''
@login_required
@user_passes_test(is_author)
def delete(request, news_id):
    news_id = int(news_id)
    entry = News.objects.get(pk=news_id)
    entry.delete()
    return redirect('/news/')
