from django.db import models
from django.conf import settings
from django.contrib.auth.models import User


# Create your models here.


class products(models.Model):
    product_name = models.CharField(max_length=255)
    catagory_id = models.IntegerField()
    description = models.TextField()
    price = models.DecimalField(max_digits=10, decimal_places=2)
    stock_quantity = models.IntegerField()
    productPic = models.ImageField(
        null=True, blank=True, upload_to="productImages/")

    class Meta:
        db_table = 'products'


class Cart(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    product = models.ForeignKey(products, on_delete=models.CASCADE)
    quantity = models.PositiveIntegerField(default=1)
