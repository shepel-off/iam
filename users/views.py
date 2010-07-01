# -*- coding: utf-8 -*-

from django import forms
from django.forms.models import inlineformset_factory
from django.shortcuts import render_to_response, redirect
from django.contrib.auth.models import User
from django.contrib.auth.forms import PasswordChangeForm
from django.contrib.auth.decorators import login_required
from django.template import RequestContext
from django.http import HttpResponseForbidden

from tinymce.widgets import TinyMCE

from iam.users.models import Profile
from iam.users.pub import Publication

class UserForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ('first_name', 'last_name', 'email',)

@login_required
def editprofile(request, profile_id):
    profile_id = int(profile_id)
    if request.user.get_profile().id != profile_id:
        return HttpResponseForbidden('Доступ запрещён')
    else:
        user = Profile.objects.get(pk=profile_id).user
        UserFormSet = inlineformset_factory(User, Profile, fk_name='user', can_delete=False)
        userform = UserForm(instance=user)
        passwordform = PasswordChangeForm(user)
        userformset = UserFormSet(instance=user)
        if request.method == 'POST':
            return redirect('/users/{0}'.format(profile_id))
        else:
            return render_to_response('users/edit.html',
                {'userform': userform, 'passwordform': passwordform,
                 'formset': userformset},
                context_instance=RequestContext(request))
