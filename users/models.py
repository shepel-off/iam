# -*- coding: utf-8 -*-

import os.path 

from django.db import models
from django.contrib.auth.models import User
from django.utils.translation import ugettext_lazy as _

from iam.labs.models import Laboratory

class Profile(models.Model):
    user = models.OneToOneField(User)
    laboratory = models.ForeignKey(Laboratory, verbose_name=_(u'Лаборатория'), null=False)
    mid_name = models.CharField(max_length=30, verbose_name=_(u'Отчество'))
    academic_degree = models.CharField(max_length=100, blank=True, 
        verbose_name=_(u'Учёная степень'))
    academic_rank = models.CharField(max_length=100, blank=True, 
        verbose_name=_(u'Учёное звание'))
    post = models.CharField(max_length=100, blank=True, verbose_name=_(u'Должность'))
    photo = models.ImageField(
        upload_to=lambda instance, filename:
            'img/uploads/photo/' + instance.user.id + os.path.splitext(filename)[1].lower(),
        blank=True, verbose_name=_(u'Фотография'))
    about = models.TextField(blank=True, verbose_name=_(u'О себе'))
    
    def __unicode__(self):
        return u' '.join((self.user.last_name, self.user.first_name, self.mid_name))

    def short_name(self):
        return u'%s %s. %s.' % (self.user.last_name, self.user.first_name[0], self.mid_name[0])

    def short_name_human(self):
        return u'%s. %s. %s' % (self.user.first_name[0], self.mid_name[0], self.user.last_name)

    class Meta:
        verbose_name = _(u'Профиль')
        verbose_name_plural = _(u'Профили')
        ordering = ('user__last_name', 'user__first_name', 'mid_name',)

def safe_get_profile(self):
    try:
        return self.get_profile()
    except Profile.DoesNotExist:
        return None

User.safe_get_profile = safe_get_profile
