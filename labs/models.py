# -*- coding: utf-8 -*-

from django.db import models
from django.contrib.auth.models import User
from iam.users.pub import Publication

class LabGroup(models.Model):
    title = models.CharField(max_length=100)
    
    def __unicode__(self):
        return self.title

    class Meta:
        verbose_name_plural = 'Laboratory groups'

class Laboratory(models.Model):
    title = models.CharField(max_length=100)
    alias = models.CharField(max_length=10)
    number = models.CharField(max_length=10)
    group = models.ForeignKey(LabGroup, blank=True)
    head = models.OneToOneField(User)
    about = models.TextField(blank=True)
    publications = models.ManyToManyField(Publication, blank=True)

    def __unicode__(self):
        return u'{0} (№ {1})'.format(self.title, self.number)

    class Meta:
        verbose_name_plural = 'Laboratories'
