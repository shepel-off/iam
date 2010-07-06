# -*- coding: utf-8 -*-

from django import forms
from django.contrib.auth.decorators import login_required
from django.shortcuts import render_to_response, redirect
from django.http import HttpResponseForbidden, HttpResponse
from django.utils.translation import ugettext_lazy as _
from iam.publications.models import Publication
from django.template import RequestContext

class PublicationForm(forms.ModelForm):
    class Meta:
        model = Publication

@login_required
def editpublication(request,pub_id):
    pub_id = int(pub_id)
    p = Publication.objects.get(pk=pub_id)
    if not request.user.get_profile() in p.authors.all():
        return HttpResponse(_(u'Доступ запрещён'))
    form = PublicationForm(instance=p)
    return render_to_response('publications/edit.html', {'form': form, 'pub_id': pub_id},
                context_instance=RequestContext(request))
