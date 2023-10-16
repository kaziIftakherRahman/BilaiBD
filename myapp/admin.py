from django.contrib import admin
from .models import vets
from.models import profile
# Register your models here.

class VetsAdmin(admin.ModelAdmin):
    list_display= ('vName', 'vAddress', 'vPhone', 'vLocation')
    
  
admin.site.register(vets, VetsAdmin)

class ProfileAdmin(admin.ModelAdmin):
    list_display= ('user', 'image', 'catName', 'catAge')

admin.site.register(profile)
