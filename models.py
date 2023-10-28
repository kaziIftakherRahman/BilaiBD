from django.db import models
from django.conf import settings
from django.contrib.auth.models import User


# Create your models here.
class vets(models.Model):
    vName =models.CharField(max_length=100)
    vAddress =models.CharField(max_length=300)
    vPhone =models.CharField(max_length=15)
    vLocation =models.CharField(max_length=100)
    
    class Meta:
        db_table='vets'

class userProfile(models.Model):
    user = models.OneToOneField(User, primary_key=True, on_delete=models.CASCADE)
    name = models.CharField(max_length=100)
    phone = models.CharField(max_length=100)
    address = models.CharField(max_length=100)
    catName = models.CharField(max_length=100)
    catAge = models.CharField(max_length=100)
    catBreed = models.CharField(max_length=100)
    profilePic = models.ImageField(null=True, blank=True, upload_to="profileImages/")
    catImg = models.ImageField(null=True, blank=True, upload_to="catImages/")
    

    class Meta:
        db_table='UserProfile'

    def str(self):
        return self.user.username
    
	