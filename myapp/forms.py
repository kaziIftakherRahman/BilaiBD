from django import forms
from django.forms import ModelForm
from .models import userProfile
from django.shortcuts import render, redirect



#Create a Profile form


class ProfileForm(ModelForm):
    user = forms.CharField(max_length=150, widget=forms.HiddenInput())
      
    class Meta:
        model = userProfile
        fields = ('user','name', 'phone', 'address', 'catName','catAge', 'catBreed', 'profilePic', 'catImg')
        
        widgets = {
            #'user': forms.HiddenInput(),
            'name': forms.TextInput(attrs={'class':'form-control', 'placeholder':'name'}),
            'phone': forms.TextInput(attrs={'class':'form-control', 'placeholder':'phone'}),
            'address':forms.TextInput(attrs={'class':'form-control', 'placeholder':'address'}),
            'catName':forms.TextInput(attrs={'class':'form-control', 'placeholder':'name of the cat'}),
            'catAge':forms.TextInput(attrs={'class':'form-control', 'placeholder':'age of the cat'}),
            'catBreed':forms.TextInput(attrs={'class':'form-control', 'placeholder':'breed of the cat'}),
            
        }
        

       