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

def results(request):
    if request.method == 'POST':
       
        symptoms = [
            request.POST.get('symptom1', ''),
            request.POST.get('symptom2', ''),
            request.POST.get('symptom3', ''),
            request.POST.get('symptom4', ''),
            request.POST.get('symptom5', ''),
        ]
        l1 = ['Lumps', 'Swelling', 'Skin_infections', 'Abnormal _discharge', 'Bad_breath', 'Weight_loss', 'Weakness',
              'Vomiting', 'Loss_of_appetite', 'Excessive_thirst', 'Increased_urination', 'Unusually_sweet_smelling_breath',
              'Lethargy', 'Dehydration', 'Urinary_tract_infection', 'Enlarged_lymph_nodes', 'Fever', 'Anemia', 'Diarrhea',
              'Eye_problem', 'Dental_disease', 'Wounds_wont_heal', 'Skin_redness', 'Behavior_change', 'Abscesses',
              'Seizures', 'Jaundice', 'Increased_vocalization']

        user_input = [1 if symptom in symptoms else 0 for symptom in l1]
                   
        with open('ML-Model/model.pkl', 'rb') as model_file:
            gnb = pickle.load(model_file)

       
        predicted_disease = gnb.predict([user_input])[0]

      
        diseases = ['Cancer', 'Diabates', 'FIV', 'FelV', 'Heartworm', 'Rabies', 'Worms']
        disease_name = diseases[predicted_disease]
      
        suggestions = []
        
        if disease_name == 'Cancer':
            suggestions = ["Pain Management: Ensure your cat is comfortable with prescribed pain medication.","","Diet: Provide a suitable diet recommended by your vet.", "","Hydration: Encourage drinking and consider subcutaneous fluids if needed.", "", "Rest: Offer a comfortable resting place; cats with cancer may need extra rest.", "","Regular Checkups: Maintain vet checkups to monitor your cat's condition.", "","Side Effects: Be aware of treatment side effects and discuss with your vet.","","Emotional Support: Give your cat extra attention and comfort." ,"","Stress Reduction: Create a calm and stress-free environment.", "","Quality of Life: Continuously assess your cat's well-being and discuss euthanasia when necessary."]
        elif disease_name == 'Diabates':
            suggestions = ["Vet Care: Consult a vet for a diabetes diagnosis and treatment plan." ,"","Insulin Therapy: Administer insulin as prescribed by your vet." ,"","Balanced Diet: Feed a consistent, low-carb diet and avoid free-feeding." ,"","Regular Monitoring: Monitor blood glucose levels regularly." ,"","Exercise: Encourage daily exercise to help regulate blood sugar.", "","Stress Reduction: Minimize stress in your cat's environment." ,"","Hydration: Ensure access to fresh water at all times." ,"","Vet Checkups: Schedule regular vet checkups to assess progress."]
        elif disease_name == 'FIV':
            suggestions = ["Regular Vet Checkups: Schedule routine vet visits for monitoring.", "","Balanced Diet: Provide high-quality, balanced cat food.","", "Indoor Living: Keep your cat indoors to prevent disease spread.", "","Stress Reduction: Minimize stress and provide a calm environment." ,"","Hydration: Ensure access to clean, fresh water at all times.",""," Prompt Treatment: Treat any infections promptly.",""," Love and Care: Give your cat love and attention.","", "Spaying/Neutering: Spay/neuter to prevent virus transmission."]
        elif disease_name == 'FelV':
            suggestions = ["Regular Vet Checkups: Schedule routine vet visits for monitoring.",""," Balanced Diet: Provide high-quality, nutritious cat food." ,"","Indoor Living: Keep your cat indoors to prevent disease spread.", "","Isolation: Separate FeLV-positive cats from uninfected ones.",""," Hydration: Ensure access to clean, fresh water." ,"","Prompt Treatment: Treat infections and illnesses promptly.",""," Love and Care: Give your cat love and attention." ,"","Spaying/Neutering: Spay/neuter to prevent virus transmission. "]
        elif disease_name == 'Heartworm':
            suggestions = ["Veterinary Care: Consult a vet for diagnosis and treatment.", "","Medications: Administer prescribed heartworm medications.","", "Rest: Allow your cat to rest and recover.",""," Preventative Measures: Use preventatives to avoid future infections.",""," Indoor Living: Keep your cat indoors to prevent exposure.",""," Regular Checkups: Schedule follow-up vet appointments. "]
        elif disease_name == 'Rabies':
            suggestions = ["Isolation: Isolate the cat to prevent transmission.",""," Consult a Vet: Seek immediate veterinary assistance. ","","Quarantine: Follow local rabies quarantine protocols.",""," Vaccination: Ensure your pets are up-to-date on rabies vaccines. ","","Safety: Avoid direct contact with the infected cat. ","","Contact Authorities: Report the incident to local authorities. "]
        elif disease_name == 'Worms':
            suggestions = ["Isolate the cat to prevent transmission.",""," Consult a vet immediately.",""," Follow local rabies quarantine protocols. ","","Ensure your pets are up-to-date on rabies vaccines.",""," Avoid direct contact with the infected cat. ","","Report the incident to local authorities. "]

        
        return render(request, 'results.html', {'predicted_disease': disease_name, 'suggestions': suggestions})
    else:
        return render(request, 'results.html')  


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

def Cat_Diagnosis(request):
    return render(request, 'Cat_Diagnosis.html')



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
        messages.warning(request, f"Sorry, {product.product_name} is out of stock.")
    else:
        # Check if adding more items exceeds the stock limit
        if not created and cart_item.quantity + 1 > product.stock_quantity:
            messages.warning(request, f"Sorry, there is not enough stock for {product.product_name}.")
        elif created and cart_item.quantity > product.stock_quantity:
            messages.warning(request, f"Sorry, there is not enough stock for {product.product_name}.")
        else:
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

    # Check if the cart is empty after removing the item
    if Cart.objects.filter(user=request.user).count() == 0:
        messages.info(request, "Your cart is now empty.")
        return redirect('catProducts')  # Replace 'catProducts' with the appropriate URL name for your product page

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
        messages.warning(request, f"Sorry, there is not enough stock for {cart_item.product.product_name}.")
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
        messages.warning(request, "Sorry, one or more items in your cart have insufficient stock.")
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
    
  





