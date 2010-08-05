# -*- coding: utf-8 -*-

from django.db import models
from django.utils.translation import ugettext_lazy as _
from iam.users.models import Profile

class Publication(models.Model):
    authors = models.ManyToManyField(Profile, verbose_name=_(u'Авторы'))
    title = models.CharField(max_length=200, verbose_name=_(u'Название'))
    
    PUBLICATION_TYPES = (
        (u'5', _(u'автореферат')),
        (u'6', _(u'диссертация')),
        (u'0', _(u'монография')),
        (u'2', _(u'препринт')),
        (u'4', _(u'сборник')),
        (u'1', _(u'статья')),
        (u'3', _(u'тезисы')),
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

    def all_authors(self):
        authors = u', '.join(author.short_name() for author in self.authors.all())
        other_authors = u', ' + self.other_authors.strip() if self.other_authors else ''
        return authors + other_authors

    def about(self):
        pub_house = self.publishing_house.strip() + ',' if self.publishing_house else ''
        pub_pages = u'{0} {1}'.format(_(u'С.'), self.start_page)
        if self.start_page != self.end_page:
            pub_pages += u'-' + str(self.end_page)
        
        return u'{journal}.{pubhouse} {year}. {issue}. {pages}.'.format(
            journal = self.journal.strip().rstrip('.'),
            pubhouse = pub_house,
            year = self.year,
            issue = self.journal_issue.strip(),
            pages = pub_pages
            )

    def __unicode__(self):
        authors = self.all_authors()
        pub_house = self.publishing_house.strip() + ',' if self.publishing_house else ''
        
        pub_pages = u'{0} {1}'.format(_(u'С.'), self.start_page)
        if self.start_page != self.end_page:
            pub_pages += u'-' + str(self.end_page)

        return u'{authors}{other} {title} // {about}'.format(
            authors = authors,
            title = self.title.strip(),
            about = about
            )
        model = Publication

    class Meta:
        verbose_name_plural = _(u'Публикации')
        ordering = ('year', 'journal',)
