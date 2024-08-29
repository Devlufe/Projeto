from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.models import User
from django.contrib.messages import constants
from django.contrib import messages
from django.contrib import auth
from .models import UserProfile
from .forms import UserProfileForm
from django.contrib.auth.decorators import login_required

@login_required
def my_profile(request):
    user_profile, created = UserProfile.objects.get_or_create(user=request.user)

    if request.method == 'POST':
        form = UserProfileForm(request.POST, request.FILES, instance=user_profile)
        if form.is_valid():
            user_profile = form.save(commit=False)
            
            # Se o campo de imagem estiver presente nos arquivos enviados
            if 'profile_image' in request.FILES:
                user_profile.profile_image = request.FILES['profile_image']
            # Se o campo de limpar imagem foi marcado
            elif request.POST.get('clear_image'):
                user_profile.profile_image = None
            
            user_profile.save()
            messages.add_message(request, constants.SUCCESS, 'Perfil atualizado com sucesso!')
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


def inicio(request):

    if request.method == 'GET':
        return render(request, 'inicio.html')


def logindeautenticação(request):

    if request.method == 'GET':
        return render(request, 'login-de-autenticação.html')
    elif request.method == 'POST':
        username = request.POST.get('username')
        senha = request.POST.get('senha')

        user = auth.authenticate(request, username=username, password=senha)

    if user:
        auth.login(request, user)
        messages.add_message(request, constants.SUCCESS, '')
        nome = user.username
        # redireciona para a tela do index
        return redirect('/dashboard_fotografo/inicio')
    else:
        messages.add_message(request, constants.ERROR,'Usúario ou senha invalidos')
        return redirect('/dashboard_fotografo/login-de-autenticação/')


def registro(request):

    if request.method == 'GET':
        return render(request, 'registro.html')
    elif request.method == 'POST':
        username = request.POST.get('username')
        senha = request.POST.get('senha')
        email = request.POST.get('email')

        user = User.objects.filter(username=username)
        if user.exists():
            messages.add_message(request, constants.ERROR,'Usuario já existe. ')
            return redirect('/dashboard_fotografo/registro')

        user = User.objects.filter(email=email)
        if user.exists():
            messages.add_message(request, constants.ERROR, 'email já existe. ')
            return redirect('/dashboard_fotografo/registro')

        try:
            User.objects.create_user(
                email=email, username=username, password=senha)
            # vai dar erro pois nao foi criada a url login
            return redirect('/dashboard_fotografo/login-de-autenticação')
        except:
            messages.add_message(request, constants.ERROR,'Erro interno do servidor. ')
            return redirect('/dashboard_fotografo/registro')


def páginasembranco(request):

    if request.method == 'GET':
        return render(request, 'páginas-em-branco.html')


def meuperfil(request):

    if request.method == 'GET':
        return render(request, 'meu-perfil.html')

