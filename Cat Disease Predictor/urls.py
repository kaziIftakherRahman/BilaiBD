"""
URL configuration for devproject project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from myapp import views
from django.conf import settings 
from django.conf.urls.static import static


urlpatterns = [

    path('admin/', admin.site.urls),
    path('', views.home, name='home'),
    path('signup/', views.signup, name='signup'),
    path('signout/', views.signout, name='signout'),
    path('signin/', views.signin, name='signin'),
    path('index/', views.index, name='index'),
    path('aboutUs/', views.aboutUs, name='aboutUs'),
    path('vetPoint/', views.viewAllVets, name='vetPoint'),
    path('searchVets', views.searchVets, name='searchVets'),
    path('catProducts/', views.viewAllProducts, name='catProducts'),
    path('searchProducts', views.searchProducts, name='searchProducts'),
    path('aCatProfile/', views.aCatProfile, name='aCatProfile'),
    path('aCatProfileEdit/', views.aCatProfileEdit, name='aCatProfileEdit'),
    path('add_to_cart/<int:product_id>/',
         views.add_to_cart, name='add_to_cart'),
    path('view_cart/', views.view_cart, name='view_cart'),
    
    path('remove_from_cart/<int:cart_item_id>/',
         views.remove_from_cart, name='remove_from_cart'),
    path('reduce_quantity/<int:cart_item_id>/',
         views.reduce_quantity, name='reduce_quantity'),
    path('increase_quantity/<int:cart_item_id>/',
         views.increase_quantity, name='increase_quantity'),
    path('clear_cart/', views.clear_cart, name='clear_cart'),
   
    path('checkout/', views.checkout, name='checkout'),
    
    path('Cat_Diagnosis/', views.Cat_Diagnosis, name='Cat_Diagnosis'),
    path('results/', views.results, name='results'),
   

    
]+ static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT) #auto creates url for files
