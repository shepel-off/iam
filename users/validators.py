# -*- coding: utf-8 -*-

from django.core.exceptions import ValidationError

def not_empty_factory(msg):
    def not_empty(value):
        if len(value) == 0:
            raise ValidationError(u"%s не есть может пусто" % msg)
    return not_empty
