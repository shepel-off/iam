# -*- coding: utf-8 -*-

from django import forms
from django.forms.models import inlineformset_factory
from django.shortcuts import render_to_response, redirect
from django.contrib.auth.models import User
from django.contrib.auth.forms import PasswordChangeForm
from django.contrib.auth.decorators import login_required
from django.template import RequestContext
from django.http import HttpResponseForbidden, HttpResponse
from django.forms.util import ErrorDict
from django.utils.translation import ugettext_lazy as _

from iam.users.validators import not_empty_factory
from iam.users.models import Profile
from iam.publications.models import Publication

class UserForm(forms.ModelForm):
    first_name = forms.CharField(required=True, label=_(u'Имя'))
    last_name = forms.CharField(required=True, label=_(u'Фамилия'))
    email = forms.EmailField(required=True, label=_(u'Электронная почта'))
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
            userform = UserForm(request.POST, instance=user)
            passwordform = PasswordChangeForm(user, request.POST)
            userformset = UserFormSet(request.POST, instance=user)
            errors = ErrorDict()
            forms = [userform, userformset.forms[0], passwordform]
            for form in forms:
                if form.has_changed():
                    errors.update(form.errors)
            if len(errors) == 0:
                for form in forms:
                    if form.has_changed():
                        form.save()
                return redirect('/users/{0}'.format(profile_id))
            return HttpResponse(errors.as_ul())
        else:
            return render_to_response('users/edit.html',
                {'userform': userform, 'passwordform': passwordform,
                 'userformset': userformset,},
                context_instance=RequestContext(request))
