# -*- coding: utf-8 -*-

from django import forms
from django.views.generic.simple import direct_to_template
from django.shortcuts import redirect
from django.contrib.auth.decorators import login_required
from django.utils.translation import ugettext_lazy as _

from iam.news.models import News
from iam.utils.decorators import user_passes_test

import datetime

class NewsForm(forms.ModelForm):
    class Meta:
        model = News
        fields = ('title', 'body')

def is_staff(user):
    return user.is_staff

def edit_or_add(request, news_id):
    if news_id:
        entry = News.objects.get(pk=news_id)
    else:
        entry = News()
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
    return direct_to_template(request, 'news/add.html',
        {
            'form': form,
            'errors': readableErrors,
            'news_id': news_id,
        })

@login_required
@user_passes_test(is_staff)
def add(request):
    return edit_or_add(request, 0)

@login_required
@user_passes_test(is_staff)
def edit(request, news_id):
    return edit_or_add(request, int(news_id))

@login_required
@user_passes_test(is_staff)
def delete(request, news_id):
    entry = News.objects.get(pk=int(news_id))
    entry.delete()
    return redirect('/news/')
