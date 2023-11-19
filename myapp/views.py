from django.shortcuts import render, redirect
from .models import vets
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import authenticate, login
from django.contrib.auth import logout
from django.contrib.auth.forms import AuthenticationForm
from django.shortcuts import HttpResponseRedirect
from .forms import ProfileForm
from .models import userProfile
from django.http import HttpResponseRedirect
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from .models import products
from .models import Cart
from django.shortcuts import get_object_or_404, render, redirect
from django.contrib import messages
import pickle
import numpy as np
import pandas as pd
from sklearn.impute import SimpleImputer
from sklearn.naive_bayes import MultinomialNB



from django.shortcuts import render



# Create your views here.

def index(request):
    return render(request, 'index.html')


def aboutUs(request):
    return render(request, 'aboutUs.html')


def aCatProfile(request):
    profile = userProfile.objects.filter(user=request.user)
    #profile = userProfile.objects.filter(user__contains=User.username)
    return render(request,'aCatProfile.html',{'profile':profile})


@login_required
def aCatProfileAdd(request):
    submitted = False
    if request.method == "POST":
        form = ProfileForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect(aCatProfile)
    else:
        # Initialize the form with the logged-in user's username
        initial_data = {'user': request.user.id}
        form = ProfileForm(initial=initial_data)
        if 'submitted' in request.GET:
            submitted = True
            
    return render(request, 'aCatProfileAdd.html',{'form':form, 'submitted':submitted})

def aCatProfileUpdate(request):
    profile = userProfile.objects.get(pk = request.user.id)
    form = ProfileForm(request.POST or None, request.FILES or None, instance=profile)
    if form.is_valid():
            form.save()
            return HttpResponseRedirect('/aCatProfileAdd?submitted=True')
    
    return render(request,'aCatProfileUpdate.html',{'profile':profile, 'form':form})

def viewAllVets(request):
    vet_list = vets.objects.all()
    return render(request,'vetPoint.html',{'vet_list':vet_list})
    #return render(request, 'vetPoint.html')

def searchVets(request):
    if request.method == "POST":
        searched = request.POST['searched']
        vetResult = vets.objects.filter(vLocation__icontains=searched)

        return render(request,'searchVets.html',
    {'searched':searched,'vetResult':vetResult})
    else:
        return render(request,'searchVets.html',{})
    
  





from django.shortcuts import render


# Create your views here.


def home(request):
    return render(request, 'home.html')


def signup(request):
    if request.user.is_authenticated:
        return redirect('/')
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password1')
            user = authenticate(username=username, password=password)
            login(request, user)
            return redirect('/index')
        else:
            return render(request, 'signup.html', {'form': form})
    else:
        form = UserCreationForm()
        return render(request, 'signup.html', {'form': form})


def signin(request):
    if request.user.is_authenticated:
        return render(request, 'index.html')
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            return redirect('/index')  # profile
        else:
            msg = 'Error Login'
            form = AuthenticationForm(request.POST)
            return render(request, 'login.html', {'form': form, 'msg': msg})
    else:
        form = AuthenticationForm()
        return render(request, 'login.html', {'form': form})


def signout(request):
    logout(request)
    return redirect('/')


def viewAllProducts(request):
    product_list = products.objects.all()
    return render(request, 'catProducts.html', {'product_list': product_list})


def searchProducts(request):
    if request.method == "POST":
        searched = request.POST['searched']
        productResult = products.objects.filter(
            product_name__icontains=searched)

        return render(request, 'searchProducts.html',
                      {'searched': searched,
                       'productResult': productResult})
    else:
        return render(request, 'searchProducts.html',
                      {})


@login_required
def add_to_cart(request, product_id):
    product = products.objects.get(pk=product_id)

    # Check if the item is already in the user's cart
    cart_item, created = Cart.objects.get_or_create(
        user=request.user, product=product, defaults={'quantity': 1})

    # Check if the stock is 0
    if product.stock_quantity == 0:
        messages.warning(
            request, f"Sorry, {product.product_name} is out of stock.")
    else:
        # Check if adding more items exceeds the stock limit
        if not created and cart_item.quantity + 1 > product.stock_quantity:
            messages.warning(
                request, f"Sorry, there is not enough stock for {product.product_name}.")
        elif created and cart_item.quantity > product.stock_quantity:
            messages.warning(
                request, f"Sorry, there is not enough stock for {product.product_name}.")
        else:
            # If the item is already in the cart, increase the quantity
            if not created:
                cart_item.quantity += 1
                cart_item.save()
    return redirect('/view_cart')


@login_required
def view_cart(request):
    cart_items = Cart.objects.filter(user=request.user)
    grand_total_cart_price = sum(
        item.product.price * item.quantity for item in cart_items)
    return render(request, 'view_cart.html', {'cart_items': cart_items, 'grand_total_cart_price': grand_total_cart_price})


@login_required
def remove_from_cart(request, cart_item_id):
    cart_item = get_object_or_404(Cart, pk=cart_item_id, user=request.user)
    cart_item.delete()

    # Check if the cart is empty after removing the item
    if Cart.objects.filter(user=request.user).count() == 0:
        messages.info(request, "Your cart is now empty.")
        return redirect('catProducts')

    return redirect('/view_cart')


@login_required
def reduce_quantity(request, cart_item_id):
    cart_item = get_object_or_404(Cart, pk=cart_item_id, user=request.user)

    # If the quantity is more than 0, reduce it
    if cart_item.quantity > 0:
        cart_item.quantity -= 1
        cart_item.save()
    else:
        messages.warning(request, "The quantity cannot be reduced further.")

    return redirect('/view_cart')


@login_required
def increase_quantity(request, cart_item_id):
    cart_item = get_object_or_404(Cart, pk=cart_item_id, user=request.user)

    # Check if increasing the quantity exceeds the stock limit
    if cart_item.quantity + 1 > cart_item.product.stock_quantity:
        messages.warning(
            request, f"Sorry, there is not enough stock for {cart_item.product.product_name}.")
    else:
        cart_item.quantity += 1
        cart_item.save()

    return redirect('view_cart')


@login_required
def clear_cart(request):
    cart_items = Cart.objects.filter(user=request.user)
    cart_items.delete()
    return redirect('catProducts')


@login_required
def checkout(request):
    cart_items = Cart.objects.filter(user=request.user)

    # Check if stock quantity is negative before updating
    if any(cart_item.product.stock_quantity - cart_item.quantity < 0 for cart_item in cart_items):
        messages.warning(
            request, "Sorry, one or more items in your cart have insufficient stock.")
    else:
        # Update stock quantity and remove items from the cart during checkout
        for cart_item in cart_items:
            product = cart_item.product
            product.stock_quantity -= cart_item.quantity
            product.save()

        # Clear the cart after checkout
        cart_items.delete()

        return redirect('catProducts')

    # Redirect to the cart view if checkout is unsuccessful
    return redirect('/view_cart')
