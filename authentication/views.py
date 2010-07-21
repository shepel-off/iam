# -*- coding: utf-8 -*-

from django import forms
from django.contrib.auth import authenticate, login as _login
from django.contrib.auth.forms import AuthenticationForm
from django.shortcuts import render_to_response, redirect
from django.http import HttpResponse
from django.utils.translation import ugettext_lazy as _
from django.template import RequestContext
from django.utils import simplejson as json

import pynotify


def login(request):
    def produce_error(msg):
        if request.is_ajax():
            return HttpResponse(json.dumps({'errors': 1, 'msg': msg}), mimetype='application/json', status=200)
        return render_to_response('registration/nojs_login.html', {'form': AuthenticationForm(), 'errors': msg }, context_instance=RequestContext(request))
    
    if request.user.is_authenticated():
        produce_error('Вы уже авторизованы')
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(username=username, password=password)
        if user is None:
            return produce_error('Неверный логин или пароль')
        _login(request, user)
        if request.GET['next']:
            return redirect(request.GET['next'])
            
        #return HttpResponse(json.dumps({'errors': 0, 'msg': 'Спасибо за авторизацию'}), mimetype='application/json', status = 200)
    if not request.is_ajax():
        return render_to_response('registration/nojs_login.html', {'form': AuthenticationForm() }, context_instance=RequestContext(request))
    return render_to_response('registration/login.html', {'form': AuthenticationForm() }, context_instance=RequestContext(request))
