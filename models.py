from django.db import models

# Create your models here.
class vets(models.Model):
    vName =models.CharField(max_length=100)
    vAddress =models.CharField(max_length=300)
    vPhone =models.CharField(max_length=15)
    vLocation =models.CharField(max_length=100)
    
    class Meta:
        db_table='vets'

 #made this on 29 Oct!!!
	