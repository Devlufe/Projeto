from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.models import User
from django.contrib.messages import constants
from django.contrib import messages
from django.contrib import auth
from .forms import FotoForm



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

def enviar_foto(request):
    # Lógica para lidar com o envio de fotos
    return render(request, 'enviar_foto.html')  # Renderiza o template enviar_foto.html

def enviar_foto(request):
    if request.method == 'POST':
        form = FotoForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            # Adicione uma mensagem de sucesso
            messages.success(request, 'Sua foto foi enviada com sucesso!')
            # Redirecione de volta para a mesma página
            return redirect('enviar_foto')
    else:
        form = FotoForm()
    return render(request, 'enviar_foto.html', {'form': form})