#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os, sys
from os.path import dirname
sys.path.append(dirname(dirname(__file__)))
os.environ['DJANGO_SETTINGS_MODULE'] = 'iam.settings'

import django.core.handlers.wsgi

application = django.core.handlers.wsgi.WSGIHandler()
