from django.db import models
from django.contrib.auth.models import User


# Create your models here.
class vets(models.Model):
    vName =models.CharField(max_length=100)
    vAddress =models.CharField(max_length=300)
    vPhone =models.CharField(max_length=15)
    vLocation =models.CharField(max_length=100)
    
    class Meta:
        db_table='vets' 




class profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    image = models.ImageField(default='default.png', upload_to='profile_pics')
    catName = models.CharField(max_length=50)
    catAge = models.CharField(max_length=3)

    def __str__(self):
        return f'{self.user.username} Profile'
    
	