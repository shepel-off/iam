# -*- coding: utf-8 -*-

from django import forms
from django.forms.models import inlineformset_factory
from django.shortcuts import render_to_response, redirect
from django.contrib.auth.models import User
from django.contrib.auth.forms import PasswordChangeForm
from django.contrib.auth.decorators import login_required
from django.template import RequestContext
from django.http import HttpResponse
from django.utils.translation import ugettext_lazy as _

from iam.users.models import Profile
from iam.publications.models import Publication
from iam.utils.decorators import user_passes_test

class UserForm(forms.ModelForm):
    username = forms.CharField(required=True, label=_(u'Логин'))
    first_name = forms.CharField(required=True, label=_(u'Имя'))
    last_name = forms.CharField(required=True, label=_(u'Фамилия'))
    email = forms.EmailField(required=True, label=_(u'Электронная почта'))
    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'email',)

def same_user(user, profile_id):
    try:
        return user.get_profile().id == int(profile_id)
    except Profile.DoesNotExist:
        return False

@login_required
@user_passes_test(same_user)
def editprofile(request, profile_id):
    profile_id = int(profile_id)
    user = Profile.objects.get(pk=profile_id).user
    UserFormSet = inlineformset_factory(User, Profile, fk_name='user', can_delete=False)
    userform = UserForm(instance=user)
    passwordform = PasswordChangeForm(user)
    userformset = UserFormSet(instance=user)
    readableErrors = {}
    if request.method == 'POST':
        userform = UserForm(request.POST, instance=user)
        passwordform = PasswordChangeForm(user, request.POST)
        userformset = UserFormSet(request.POST, instance=user)
        forms = [userform, userformset.forms[0], passwordform]
        for form in forms:
            if form.has_changed():
         # ZOMFG coding at 01:00 is pure evil :D shit below is scary like a Hitler in pink legins
                readableErrors.update((unicode(form.base_fields[key].label), form.errors[key].as_text()) for key in form.errors.keys())
        if len(readableErrors) == 0:
            for form in forms:
                if form.has_changed():
                    form.save()
            return redirect('/users/{0}'.format(profile_id))
    return render_to_response('users/edit.html',
        {'userform': userform, 'passwordform': passwordform,
         'userformset': userformset, 'errors': readableErrors},
         context_instance=RequestContext(request))
