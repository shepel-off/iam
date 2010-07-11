# -*- coding: utf-8 -*-

from django import template

@register.tag(name="rounded")
def do_rounded(parser, token):
    nodelist = parser.parse(('endrounded',))
    parser.delete_first_token()
    return Rounded(nodelist)

class Rounded(template.Node):
    
    def __init__(self, nodelist):
        self.nodelist = nodelist

    def render(self, context):
        output = self.nodelist.render(context)
        return output.upper()
