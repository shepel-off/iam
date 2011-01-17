# -*- coding: utf-8 -*-

from django import forms
from django.shortcuts import redirect
from django.views.generic.simple import direct_to_template
from django.contrib.auth.decorators import login_required
from django.utils.translation import ugettext_lazy as _

from iam.labs.models import Laboratory
from iam.utils.decorators import user_passes_test
#from tinymce.widgets import TinyMCE

class LaboratoryForm(forms.ModelForm):
#    about = forms.CharField(widget=TinyMCE(), label=_('Описание'))
    class Meta:
        model = Laboratory
        fields = ('title', 'number', 'about',)

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
            return redirect('/labs/%d' % lab_id)
    form = LaboratoryForm(instance=lab)
    return direct_to_template(request, 'labs/edit.html',
        {
            'form': form,
            'lab_id': lab_id
        })
