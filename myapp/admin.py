from django.contrib import admin
from .models import vets
from .models import products
from .models import userProfile
# Register your models here.


class ProductsAdmin(admin.ModelAdmin):
    list_display = ('product_name', 'catagory_id',
                    'description', 'price', 'stock_quantity', 'productPic')


admin.site.register(products, ProductsAdmin)
