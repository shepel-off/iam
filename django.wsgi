#!/usr/bin/env python
# -*- coding: utf-8 -*-
#import os
#import sys
#from django.core.handlers.wsgi import WSGIHandler

#sys.path.append('/var/www/localhost/htdocs')
#os.environ['DJANGO_SETTINGS_MODULE'] = 'iam.settings'
#application = WSGIHandler()

import os, sys
sys.path.append('/srv/www/vhosts')
os.environ['DJANGO_SETTINGS_MODULE'] = 'iam.settings'

import django.core.handlers.wsgi

application = django.core.handlers.wsgi.WSGIHandler()
