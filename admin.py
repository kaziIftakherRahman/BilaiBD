from django.contrib import admin
from .models import vets
# Register your models here.

class VetsAdmin(admin.ModelAdmin):
    list_display= ('vName', 'vAddress', 'vPhone', 'vLocation')
    
  
admin.site.register(vets, VetsAdmin)
