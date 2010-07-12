# -*- coding: utf-8 -*-

from django import forms
from django.contrib.auth import authenticate, login as _login
from django.contrib.auth.models import User
from django.contrib.auth.forms import AuthenticationForm
from django.shortcuts import render_to_response, redirect
from django.http import HttpResponse
from django.utils.translation import ugettext_lazy as _
from django.contrib.auth.forms import PasswordChangeForm
from django.template import RequestContext
from django.utils import simplejson as json

def login(request):
    if request.user.is_authenticated():
	    return HttpResponse(json.dumps({'errors': 0, 'msg': 'Вы уже авторизовались'}), mimetype='application/json', status = 200)
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(username=username, password=password)
        if user is None:
	    return HttpResponse(json.dumps({'errors': 1, 'msg': 'Неверный логин или пароль'}), mimetype='application/json', status = 200)
        else:
            _login(request, user)
	    return HttpResponse(json.dumps({'errors': 0, 'msg': 'Спасибо за авторизацию'}), mimetype='application/json', status = 200)
    return render_to_response('registration/login.html', {'form': AuthenticationForm() }, context_instance=RequestContext(request))
