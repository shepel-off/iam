# -*- coding: utf-8 -*-

from django.db import models
from django.contrib.auth.models import User
from iam.labs.models import Laboratory
from iam.users.pub import Publication

class Profile(models.Model):
    user = models.OneToOneField(User)
    laboratory = models.ForeignKey(Laboratory, blank=True)
    publications = models.ManyToManyField(Publication, blank=True)
    mid_name = models.CharField(max_length=30)
    academic_degree = models.CharField(max_length=100)
    
    def __unicode__(self):
        return u' '.join((self.user.last_name, self.user.first_name, self.mid_name))

    #User.__unicode__ = lambda self: self.get_profile().__unicode__()

    def short_name(self):
        return u'{0} {1[0]}. {2[0]}.'.format(self.user.last_name, self.user.first_name, self.mid_name)

def safe_get_profile(self):
    try:
        return self.get_profile()
    except Profile.DoesNotExists:
        return None

User.safe_get_profile = safe_get_profile
