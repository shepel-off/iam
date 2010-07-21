# -*- coding: utf-8 -*-

from django import forms
from django.shortcuts import render_to_response, redirect
from django.contrib.auth.decorators import login_required
from django.template import RequestContext
from django.http import HttpResponse
from django.utils.translation import ugettext_lazy as _

from iam.labs.models import Laboratory
from iam.utils.decorators import user_passes_test

class LaboratoryForm(forms.ModelForm):
    class Meta:
        model = Laboratory
        fields = ('about',)

def user_in_lab(user, lab_id):
    return user.get_profile().laboratory.id == int(lab_id)
    
@login_required
@user_passes_test(user_in_lab)
def edit(request, lab_id):
    lab_id = int(lab_id)
    lab = Laboratory.objects.get(pk=lab_id)
    if request.method == 'POST':
        form = LaboratoryForm(request.POST, instance=lab)
        if form.is_valid():
            form.save()
            return redirect('/labs/{0}'.format(lab_id))
    form = LaboratoryForm(instance=lab)
    return render_to_response('labs/edit.html',
            {'form': form,
             'lab_id': lab_id},
            context_instance=RequestContext(request))
