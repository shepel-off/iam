# -*- coding: utf-8 -*-

from django import forms
from django.views.generic.simple import direct_to_template
from django.shortcuts import redirect
from django.contrib.auth.decorators import login_required
from django.utils.translation import ugettext_lazy as _

from iam.publications.models import Publication
from iam.users.models import Profile
from iam.utils.decorators import user_passes_test

class PublicationForm(forms.ModelForm):
    class Meta:
        model = Publication

    def clean(self):
        cleaned_data = self.cleaned_data

        startpage = cleaned_data.get('start_page')
        endpage = cleaned_data.get('end_page')
        if startpage and endpage and startpage > endpage:
            raise forms.ValidationError(u'Номер первой страницы должен быть меньше либо равен номеру последней страницы')

        return cleaned_data

def is_author(user, pub_id):
    try:
        return user.get_profile() in Publication.objects.get(pk=int(pub_id)).authors.all()
    except Profile.DoesNotExist:
        return False

def edit_or_add(request, pub_id):
    pub_id = int(pub_id)
    if pub_id:
        p = Publication.objects.get(pk=pub_id)
    else:
        p = Publication()
    form = PublicationForm(instance=p)
    readableErrors = {}
    if request.method == 'POST':
        form = PublicationForm(request.POST, instance=p)
        if form.has_changed():
            readableErrors.update(
                (unicode(form.base_fields[key].label), form.errors[key].as_text())
                    for key in form.errors.keys())
        if len(readableErrors) == 0 and form.has_changed():
            form.save()
            return redirect('/users/%s' % request.user.get_profile().id)
    return direct_to_template(request, 'publications/edit.html',
        {
            'form': form,
            'pub_id': pub_id,
            'errors': readableErrors,
        })

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
    entry = Publication.objects.get(pk=int(pub_id))
    entry.delete()
    return redirect('/users/%s' % request.user.get_profile().id)
