# -*- coding: utf-8 -*-

from django import forms
from django.contrib.auth.decorators import login_required
from django.shortcuts import render_to_response, redirect
from django.http import HttpResponseForbidden, HttpResponse
from django.utils.translation import ugettext_lazy as _
from iam.publications.models import Publication
from iam.users.models import Profile
from django.template import RequestContext
from iam.utils.decorators import user_passes_test

class PublicationForm(forms.ModelForm):
    class Meta:
        model = Publication

def is_author(user,pub_id):
    try:
        return user.get_profile() in Publication.objects.get(pk=int(pub_id)).authors.all()
    except Profile.DoesNotExist:
        return False

@login_required
@user_passes_test(is_author)
def editpublication(request, pub_id):
    pub_id = int(pub_id)
    p = Publication.objects.get(pk=pub_id)
    form = PublicationForm(instance=p)
    if request.method == 'POST':
        form = PublicationForm(request.POST, instance=p)
        if form.has_changed
    return render_to_response('publications/edit.html', {'form': form, 'pub_id': pub_id},
                context_instance=RequestContext(request))

@login_required
def addpublication(request):
    p = Publication()
    form = PublicationForm(instance=p)
    return render_to_response('publications/add.html', {'form': form},
                context_instance=RequestContext(request))

