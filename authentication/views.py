# -*- coding: utf-8 -*-

from django import forms
from django.contrib.auth import authenticate, login as _login
from django.contrib.auth.forms import AuthenticationForm
from django.shortcuts import render_to_response, redirect
from django.http import HttpResponse
from django.utils.translation import ugettext_lazy as _
from django.template import RequestContext

import pynotify

def produce_error(request, msg):
    return render_to_response('registration/login.html', {'form': AuthenticationForm(), 'errors': msg }, context_instance=RequestContext(request))

def login(request):
    #if request.user.is_authenticated():
    #    return produce_error(request, [u'Вы уже авторизованы'])
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(username=username, password=password)
        if user is None:
            return produce_error(request, [u'Неверный логин или пароль'])
        _login(request, user)
        return redirect(request.POST['next'])
    return render_to_response('registration/login.html',
            {'form': AuthenticationForm(),
            'next': '/' if 'next' not in request.GET else request.GET['next'] }, context_instance=RequestContext(request))
