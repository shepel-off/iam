from django import forms
from iam.news.models import News
from tinymce.widgets import TinyMCE
from django.shortcuts import render_to_response, redirect
from django.contrib.auth.decorators import login_required
from django.template import RequestContext

import datetime

class NewsForm(forms.ModelForm):
    body = forms.CharField(widget=TinyMCE(
        attrs={'cols': 80, 'rows': 30},
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
