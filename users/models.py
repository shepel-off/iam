# -*- coding: utf-8 -*-

from django.db import models
from django.contrib.auth.models import User

class Publication(models.Model):
    title = models.CharField(max_length=200)
    
    PUBLICATION_TYPES = (
        (u'0', 'monograph'),
        (u'1', 'article'),
        (u'2', 'preprint')
    )
    type = models.CharField(max_length=1, choices=PUBLICATION_TYPES)
    
    LANGUAGES = (
        (u'0', 'russian'),
        (u'1', 'english'),
        (u'2', 'other')
    )
    language = models.CharField(max_length=1, choices=LANGUAGES)
    
    other_authors = models.CharField(max_length=100, blank=True)
    year = models.PositiveIntegerField()
    publishing_house = models.CharField(max_length=200, blank=True)
    journal = models.CharField(max_length=200)
    journal_issue = models.CharField(max_length=20)
    start_page = models.PositiveIntegerField()
    end_page = models.PositiveIntegerField()

    def __unicode__(self):
        other_authors = u', ' + self.other_authors.strip() if self.other_authors else ''
        pub_house = self.publishing_house.strip() + ',' if self.publishing_house else ''
        
        PAGE_PREFIX = {
            u'0': u'С.',
            u'1': u'P.'
        }
        pub_pages = u'{0} {1}'.format(PAGE_PREFIX[self.language], self.start_page)
        if self.start_page != self.end_page:
            pub_pages += u'-' + str(self.end_page)

        return u'{authors}{other} {title} // {journal}.{pubhouse} {year}. {issue}. {pages}.'.format(
            authors = ', '.join(profile.short_name() for profile in self.profile_set.all()),
            other = other_authors,
            title = self.title.strip(),
            journal = self.journal.strip().rstrip('.'),
            pubhouse = pub_house,
            year = self.year,
            issue = self.journal_issue.strip(),
            pages = pub_pages
            )

class Laboratory(models.Model):
    title = models.CharField(max_length=100)
    number = models.CharField(max_length=10)
    head = models.OneToOneField(User)
    about = models.TextField(blank=True)
    publications = models.ManyToManyField(Publication, blank=True)

    def __unicode__(self):
        return self.title

    class Meta:
        verbose_name_plural = 'Laboratories'

class Profile(models.Model):
    user = models.OneToOneField(User)
    laboratory = models.ForeignKey(Laboratory)
    publications = models.ManyToManyField(Publication, blank=True)
    mid_name = models.CharField(max_length=30)
    academic_degree = models.CharField(max_length=100)
    
    def __unicode__(self):
        return u' '.join((self.user.last_name, self.user.first_name, self.mid_name))

    #User.__unicode__ = lambda self: self.get_profile().__unicode__()

    def short_name(self):
        return u'{0} {1[0]}. {2[0]}.'.format(self.user.last_name, self.user.first_name, self.mid_name)
