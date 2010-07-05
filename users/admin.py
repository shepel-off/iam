from django.contrib import admin
from django.contrib.auth.models import User
from django.contrib.auth.admin import UserAdmin
from iam.users.models import Profile,Publication

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

class ProfileAdmin(UserAdmin):
    inlines = [ProfileInline]
    list_display = ('username', 'email', 'last_name', \
        'first_name', 'middle_name', 'academic_degree', 'is_staff')

admin.site.register(User, ProfileAdmin)
admin.site.register(Publication)
admin.site.register(Profile)
