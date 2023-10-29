from django.shortcuts import get_object_or_404, render, redirect
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import authenticate, login
from django.contrib.auth import logout
from django.contrib.auth.forms import AuthenticationForm
from django.shortcuts import HttpResponseRedirect
from .models import vets
from .models import products
from .forms import ProfileForm
from .models import userProfile
from django.http import HttpResponseRedirect
from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from .models import Cart
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


def index(request):
    return render(request, 'index.html')


def aboutUs(request):
    return render(request, 'aboutUs.html')


def aCatProfile(request):
    profile = userProfile.objects.filter(user=request.user)
    # profile = userProfile.objects.filter(user__contains=User.username)
    return render(request, 'aCatProfile.html', {'profile': profile})


@login_required
def aCatProfileEdit(request):
    submitted = False
    if request.method == "POST":
        form = ProfileForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect('/aCatProfileEdit?submitted=True')
    else:
        form = ProfileForm
        if 'submitted' in request.GET:
            submitted = True

    return render(request, 'aCatProfileEdit.html', {'form': form, 'submitted': submitted})


def viewAllVets(request):
    vet_list = vets.objects.all()
    return render(request, 'vetPoint.html', {'vet_list': vet_list})
    # return render(request, 'vetPoint.html')


def searchVets(request):
    if request.method == "POST":
        searched = request.POST['searched']
        vetResult = vets.objects.filter(vLocation__icontains=searched)

        return render(request, 'searchVets.html',
                      {'searched': searched,
                       'vetResult': vetResult})
    else:
        return render(request, 'searchVets.html',
                      {})


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

    # If the item is already in the cart, increase the quantity
    if not created:
        cart_item.quantity += 1
        cart_item.save()

    # You can change this URL to the page where the user can view their cart
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
    return redirect('/view_cart')


@login_required
def reduce_quantity(request, cart_item_id):
    cart_item = get_object_or_404(Cart, pk=cart_item_id, user=request.user)

    # If the quantity is more than 1, reduce it, else remove from cart
    if cart_item.quantity > 1:
        cart_item.quantity -= 1
        cart_item.save()

    return redirect('/view_cart')


@login_required
def increase_quantity(request, cart_item_id):
    cart_item = get_object_or_404(Cart, pk=cart_item_id, user=request.user)
    cart_item.quantity += 1
    cart_item.save()

    return redirect('view_cart')


@login_required
def clear_cart(request):
    cart_items = Cart.objects.filter(user=request.user)
    cart_items.delete()
    return redirect('view_cart')


@login_required
def checkout(request):
    cart_items = Cart.objects.filter(user=request.user)

    # Update stock quantity and remove items from the cart during checkout
    for cart_item in cart_items:
        product = cart_item.product
        product.stock_quantity -= cart_item.quantity
        product.save()

    # Clear the cart after checkout
    cart_items.delete()

    return redirect('/view_cart')
