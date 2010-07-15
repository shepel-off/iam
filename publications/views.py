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
    def __init__(self, *args, **kw):
        super(forms.ModelForm, self).__init__(*args, **kw)
        self.fields.keyOrder = [
            'title',
            'authors',
            'other_authors',
            'language',
            'type',
            'year',
            'publishing_house',
            'journal',
            'journal_issue',
            'start_page',
            'end_page'
        ]
        
    class Meta:
        model = Publication

def is_author(user,pub_id):
    try:
        return user.get_profile() in Publication.objects.get(pk=int(pub_id)).authors.all()
    except Profile.DoesNotExist:
        return False

def edit_or_add(request, pub_id):
    pub_id = int(pub_id)
    p = Publication.objects.get(pk=pub_id) if pub_id else Publication()
    form = PublicationForm(instance=p)
    readableErrors = {}
    if request.method == 'POST':
        form = PublicationForm(request.POST, instance=p)
        if form.has_changed():
            readableErrors.update( (unicode(form.base_fields[key].label), form.errors[key].as_text()) for key in form.errors.keys() )
        if len(readableErrors) == 0 and form.has_changed():
            form.save()
            return redirect('/users/{0}'.format(request.user.get_profile().id))
    return render_to_response('publications/edit.html', {'form': form, 'pub_id': pub_id, 'errors': readableErrors},
        context_instance=RequestContext(request))

@login_required
@user_passes_test(is_author)
def editpublication(request, pub_id):
    return edit_or_add(request, pub_id)

@login_required
def addpublication(request):
    return edit_or_add(request, 0)

@login_required
@user_passes_test(is_author)
def delete(request, pub_id):
    pub_id = int(pub_id)
    entry = Publication.objects.get(pk=pub_id)
    entry.delete()
    return redirect('/users/{0}'.format(request.user.get_profile().id))
