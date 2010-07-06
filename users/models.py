# -*- coding: utf-8 -*-

from django.db import models
from django.contrib.auth.models import User
from django.utils.translation import ugettext_lazy as _

from iam.labs.models import Laboratory

class Profile(models.Model):
    user = models.OneToOneField(User)
    laboratory = models.ForeignKey(Laboratory, verbose_name=_(u'Лаборатория'))
    mid_name = models.CharField(max_length=30, verbose_name=_(u'Отчество'))
    academic_degree = models.CharField(max_length=100, verbose_name=_(u'Учёная степень'))
    photo = models.ImageField(upload_to='img/', blank=True, verbose_name=_(u'Фотография'))
    
    def __unicode__(self):
        return u' '.join((self.user.last_name, self.user.first_name, self.mid_name))

    def short_name(self):
        return u'{0} {1[0]}. {2[0]}.'.format(self.user.last_name, self.user.first_name, self.mid_name)

    class Meta:
        verbose_name = _(u'Профиль')
        verbose_name_plural = _(u'Профили')

def safe_get_profile(self):
    try:
        return self.get_profile()
    except Profile.DoesNotExists:
        return None

User.safe_get_profile = safe_get_profile

class Publication(models.Model):
    authors = models.ManyToManyField(Profile, verbose_name=_(u'Авторы'))
    title = models.CharField(max_length=200, verbose_name=_(u'Название'))
    
    PUBLICATION_TYPES = (
        (u'0', _(u'монография')),
        (u'2', _(u'препринт')),
        (u'1', _(u'статья')),
    )
    type = models.CharField(max_length=1, choices=PUBLICATION_TYPES, verbose_name=_(u'Вид'))
    
    LANGUAGES = (
        (u'0', _(u'русский')),
        (u'1', _(u'английский')),
        (u'2', _(u'другой'))
    )
    language = models.CharField(max_length=1, choices=LANGUAGES, verbose_name=_(u'Язык'))
    other_authors = models.CharField(max_length=100, blank=True, verbose_name=_(u'Другие авторы'),
        help_text=_(u'Отсутствующие в списке'))
    year = models.PositiveIntegerField(verbose_name=_(u'Год публикации'))
    publishing_house = models.CharField(max_length=200, blank=True, verbose_name=_(u'Издательство'))
    journal = models.CharField(max_length=200, verbose_name=_(u'Научное издание'))
    journal_issue = models.CharField(max_length=20, verbose_name=_(u'Номер издания'))
    start_page = models.PositiveIntegerField(verbose_name=_(u'Первая страница публикации'))
    end_page = models.PositiveIntegerField(verbose_name=_(u'Последняя страница публикации'))

    def __unicode__(self):
        other_authors = u', ' + self.other_authors.strip() if self.other_authors else ''
        pub_house = self.publishing_house.strip() + ',' if self.publishing_house else ''
        
        pub_pages = u'{0} {1}'.format(_(u'С.'), self.start_page)
        if self.start_page != self.end_page:
            pub_pages += u'-' + str(self.end_page)

        return u'{authors}{other} {title} // {journal}.{pubhouse} {year}. {issue}. {pages}.'.format(
            authors = ', '.join(author.short_name() for author in self.authors.all()),
            other = other_authors,
            title = self.title.strip(),
            journal = self.journal.strip().rstrip('.'),
            pubhouse = pub_house,
            year = self.year,
            issue = self.journal_issue.strip(),
            pages = pub_pages
            )
        model = Publication

    class Meta:
        verbose_name_plural = _(u'Публикации')
