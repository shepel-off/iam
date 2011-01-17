# -*- coding: utf-8 -*-

from django import forms
from django.views.generic.simple import direct_to_template
from django.shortcuts import redirect
from django.contrib.auth import authenticate, login as django_login
from django.contrib.auth.forms import AuthenticationForm
from django.utils.translation import ugettext_lazy as _

def answer(**kwargs):
    args = { 'form': AuthenticationForm() }
    args.update(kwargs)
    return direct_to_template(request, 'registration/login.html', args)

def login(request):
    #if request.user.is_authenticated():
    #    return produce_error(request, [u'Вы уже авторизованы'])
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(username=username, password=password)
        if user is None:
            return answer(errors=[u'Неверный логин или пароль'])
        elif not user.is_active:
            return answer(errors=[u'Ваша учётная запись заблокирована'])
        django_login(request, user)
        return redirect(request.POST['next'])
    return answer(next=request.GET.get('next', '/'))
