from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.models import User
from django.contrib.messages import constants
from django.contrib import messages
from django.contrib import auth



def index (request):
    
    if request.method == 'GET':
        return render(request, 'index.html')
    
    
def gallerysingle (request):
    
    if request.method == 'GET':
        return render(request, 'gallery-single.html')
    
    
def gallery (request):
    
    if request.method == 'GET':
        return render(request, 'gallery.html')
    
def about (request):
    
    if request.method == 'GET':
        return render(request, 'about.html')
    
def contact (request):
    
    if request.method == 'GET':
        return render(request, 'contact.html')    
    
    
def sampleinnerpage (request):
    
    if request.method == 'GET':
        return render(request, 'sample-inner-page.html')    
    
    
def services (request):
    
    if request.method == 'GET':
        return render(request, 'services.html')    