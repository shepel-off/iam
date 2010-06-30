# -*- coding: utf-8 -*-

from django import forms
from django.forms.models import inlineformset_factory
from django.shortcuts import render_to_response, redirect
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from django.template import RequestContext
from django.http import HttpResponseForbidden, HttpResponse

from tinymce.widgets import TinyMCE

from iam.users.models import Profile
from iam.users.pub import Publication

class UserForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'email', 'password',)

@login_required
def editprofile(request, user_id):
    user_id = int(user_id)
    if request.user.get_profile().id != user_id:
        return HttpResponseForbidden('Доступ запрещён')
    else:
        user = Profile.objects.get(pk=user_id).user
        UserFormSet = inlineformset_factory(User, Profile, fk_name="user", can_delete=False)
        userform = UserForm(instance=user)
        userformset = UserFormSet(instance=user)
        if request.method == 'POST':
            return redirect('/users/{0}'.format(user_id))
        else:
            return render_to_response('users/edit.html',
                {'form': userform, 'formset': userformset},
                context_instance=RequestContext(request))
