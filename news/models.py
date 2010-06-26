# -*- coding: utf-8 -*-

from django.db import models
from iam.users.models import Profile

class News(models.Model):
    title = models.CharField(max_length=200)
    body = models.TextField()
    date = models.DateTimeField('Date published')
    author = models.ForeignKey(Profile)

    def __unicode__(self):
        return self.title

    class Meta:
        verbose_name_plural = 'News'
