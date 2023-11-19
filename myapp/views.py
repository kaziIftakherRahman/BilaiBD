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
    
  





