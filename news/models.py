# -*- coding: utf-8 -*-

from django.db import models
from django.utils.translation import ugettext_lazy as _

from iam.users.models import Profile

class News(models.Model):
    title = models.CharField(max_length=200, verbose_name=_(u'Заголовок'))
    body = models.TextField(verbose_name=_(u'Текст'))
    date = models.DateTimeField(verbose_name=_(u'Дата публикации'))
    author = models.ForeignKey(Profile, verbose_name=_(u'Автор'))

    def __unicode__(self):
        return self.title

    class Meta:
        verbose_name_plural = _(u'Новости')
