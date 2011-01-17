from django.contrib import admin
from iam.news.models import News
from tinymce.widgets import TinyMCE
from django.db import models
from django.contrib.flatpages.admin import FlatPageAdmin
from django.contrib.flatpages.models import FlatPage

overrides = {
        models.TextField: { 'widget': TinyMCE(mce_attrs={ 'width': '50%', }) },
}

class NewsAdmin(admin.ModelAdmin):
    formfield_overrides = overrides

    class Media:
        js = ['/js/tiny_mce/tiny_mce.js', '/media/filebrowser/js/TinyMCEAdmin.js',]

class MyFlatPageAdmin(FlatPageAdmin):
    formfield_overrides = overrides

admin.site.unregister(FlatPage)
admin.site.register(FlatPage, MyFlatPageAdmin)

admin.site.register(News, NewsAdmin)
