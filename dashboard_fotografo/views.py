from django.shortcuts import render, redirect, get_object_or_404, HttpResponse
from django.contrib.auth.models import User
from django.contrib.messages import constants
from django.contrib import messages
from django.contrib import auth
from .models import UserProfile
from .forms import UserProfileForm
from django.contrib.auth.decorators import login_required

from django.contrib import messages
from .models import Categoria, Albuns
from PIL import Image, ImageDraw
from datetime import date
from io import BytesIO
from django.core.files.uploadedfile import InMemoryUploadedFile
import sys
from django.shortcuts import redirect
from django.urls import reverse

@login_required
def meuperfil(request):
    user_profile = get_object_or_404(UserProfile, user=request.user)
    return render(request, 'meu-perfil.html', {'user_profile': user_profile})

@login_required
def my_profile(request):
    user_profile, created = UserProfile.objects.get_or_create(user=request.user)

    if request.method == 'POST':
        form = UserProfileForm(request.POST, request.FILES, instance=user_profile)
        if form.is_valid():
            form.save()
            messages.add_message(request, messages.SUCCESS, 'Perfil atualizado com sucesso!')
            return redirect('my_profile')
    else:
        form = UserProfileForm(instance=user_profile)

    return render(request, 'my-profile.html', {'form': form, 'user_profile': user_profile})

def autenticaçãoesquecisenha(request):
    if request.method == 'GET':
        return render(request, 'autenticação-esqueci-senha.html')

def redefinirsenha(request):
    if request.method == 'GET':
        return render(request, 'redefinir-senha.html')

@login_required
def inicio(request):
    user_profile = get_object_or_404(UserProfile, user=request.user)
    return render(request, 'inicio.html', {'user_profile': user_profile})

def logindeautenticação(request):
    if request.method == 'GET':
        return render(request, 'login-de-autenticação.html')
    elif request.method == 'POST':
        username = request.POST.get('username')
        senha = request.POST.get('senha')

        user = auth.authenticate(request, username=username, password=senha)

        if user:
            auth.login(request, user)
            messages.add_message(request, messages.SUCCESS, 'Login realizado com sucesso!')
            return redirect('/dashboard_fotografo/inicio')
        else:
            messages.add_message(request, messages.ERROR, 'Usuário ou senha inválidos')
            return redirect('/dashboard_fotografo/login-de-autenticação/')

def registro(request):
    if request.method == 'GET':
        return render(request, 'registro.html')
    elif request.method == 'POST':
        username = request.POST.get('username')
        senha = request.POST.get('senha')
        email = request.POST.get('email')

        if User.objects.filter(username=username).exists():
            messages.add_message(request, messages.ERROR, 'Usuário já existe.')
            return redirect('/dashboard_fotografo/registro')

        if User.objects.filter(email=email).exists():
            messages.add_message(request, messages.ERROR, 'Email já existe.')
            return redirect('/dashboard_fotografo/registro')

        try:
            User.objects.create_user(email=email, username=username, password=senha)
            return redirect('/dashboard_fotografo/login-de-autenticação')
        except:
            messages.add_message(request, messages.ERROR, 'Erro interno do servidor.')
            return redirect('/dashboard_fotografo/registro')

def galeria(request):
    if request.method == "GET":
        categoria = Categoria.objects.all()
        return render(request, 'galeria.html', {'categorias': categoria})
    elif request.method == "POST":
        Nome_Album = request.POST.get('Nome_Album')
        categoria = request.POST.get('categoria')
        imagens = request.FILES.getlist('imagens')
        
        produto = Albuns(Nome_Album=Nome_Album, categoria_id=categoria)
        
        produto.save()
        
       
    for f in request.FILES.getlist('imagens'):
            name = f'{date.today()}-{produto.id}.jpg'

            img = Image.open(f)
            img = img.convert('RGB')
            img = img.resize((300, 300))
            draw = ImageDraw.Draw(img)
            draw.text((20, 280), f"PHOTOPIXES {date.today()}", (255, 255, 255))
            output = BytesIO()
            img.save(output, format="JPEG", quality=100)
            output.seek(0)
            img_final = InMemoryUploadedFile(output,
                                                'ImageField',
                                                name,
                                                'image/jpeg',
                                                sys.getsizeof(output),
                                                None
            )


            img_dj = Albuns(imagem = img_final, categoria_id=categoria)
            img_dj.save()
                
    messages.add_message(request, messages.SUCCESS, 'Foto cadastrada com sucesso')
    return redirect(reverse('galeria'))
        

          