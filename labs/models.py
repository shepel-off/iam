# -*- coding: utf-8 -*-

from django.db import models
from django.contrib.auth.models import User
from django.utils.translation import ugettext_lazy as _

class LabGroup(models.Model):
    title = models.CharField(max_length=100, verbose_name=_(u'Отдел'))
    
    def __unicode__(self):
        return self.title

    class Meta:
        verbose_name_plural = _(u'Отделы')

class Laboratory(models.Model):
    title = models.CharField(max_length=100, verbose_name=_(u'Название'))
    number = models.CharField(max_length=10, verbose_name=_(u'Номер'))
    group = models.ForeignKey(LabGroup, blank=True, verbose_name=_(u'Отдел'))
    head = models.OneToOneField(User, verbose_name=_(u'Заведующий'))
    about = models.TextField(blank=True, verbose_name=(u'Описание'))

    def __unicode__(self):
        return u'%s (№ %s)' % (self.title, self.number)

    def _is_lab(self):
        return self.title.lower().find(u'лаборатория') != -1

    def instrumental_case(self):
        if self._is_lab():
            return _(u'лабораторией')
        else:
            return _(u'сектором')

    def prepositional_case(self):
        if self._is_lab():
            return _(u'лаборатории')
        else:
            return _(u'секторе')

    class Meta:
        verbose_name = _(u'Лаборатория')
        verbose_name_plural = _(u'Лаборатории')
        ordering = ('number', 'title',)
