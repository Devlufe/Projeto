from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.models import User
from django.contrib import messages, auth
from django.contrib.auth.decorators import login_required
from .models import UserProfile
from .forms import UserProfileForm

def galeria(request):
        user_profile = get_object_or_404(UserProfile, user=request.user)
        return render(request, 'galeria.html', {'user_profile': user_profile})
    
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
    if request.method == 'GET':
        return render(request, 'galeria.html')

def salvaralbum(request):
    if request.method == 'GET':
        return render(request, 'salvar_album.html')
