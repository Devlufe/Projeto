from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.models import User
from django.contrib.messages import constants
from django.contrib import messages
from django.contrib import auth
from .forms import FotoForm
from .models import Foto
from django.views.generic import TemplateView



def index(request):
    if request.method == 'GET':
        fotos = Foto.objects.all()
        return render(request, 'index.html', {'fotos': fotos})


    
    
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

from .models import Foto  # Importe o modelo Foto

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


class IndexView(TemplateView):
    template_name = 'index.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['fotos'] = Foto.objects.all()  # Adicione fotos ao contexto
        return context