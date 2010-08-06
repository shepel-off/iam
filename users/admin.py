from django.contrib import admin
from django.contrib.auth.models import User
from django.contrib.auth.admin import UserAdmin
from iam.users.models import Profile
from iam.publications.models import Publication
from tinymce.widgets import TinyMCE
from django.db import models

overrides = {
        models.TextField: { 'widget': TinyMCE(mce_attrs={ 'width': '50%', }) },
}
admin.site.unregister(User)

def middle_name(self):
    profile = self.safe_get_profile()
    return profile.mid_name if profile else None
User.middle_name = middle_name

def academic_degree(self):
    profile = self.safe_get_profile()
    return profile.academic_degree if profile else None
User.academic_degree = academic_degree

class ProfileInline(admin.StackedInline):
    model = Profile
    formfield_overrides = overrides

class ProfileAdmin(UserAdmin):
    formfield_overrides = overrides
    inlines = [ProfileInline]
    list_display = ('username', 'email', 'last_name', \
        'first_name', 'middle_name', 'is_staff')

admin.site.register(User, ProfileAdmin)
admin.site.register(Publication)
admin.site.register(Profile)
