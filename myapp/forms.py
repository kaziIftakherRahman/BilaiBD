from django import forms
from django.forms import ModelForm
from .models import userProfile
from django.shortcuts import render, redirect



#Create a Profile form


class ProfileForm(ModelForm):
    class Meta:
        model = userProfile
        fields = ('user','name', 'phone', 'address', 'catName','catAge', 'catBreed', 'profilePic', 'catImg')
