from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.models import User
from django.contrib.messages import constants
from django.contrib import messages
from django.contrib import auth


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
        return redirect('/dashboard_fotografo/auth-login/')


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
            return redirect('/dashboard_fotografo/auth-login')
        except:
            messages.add_message(request, constants.ERROR,'Erro interno do servidor. ')
            return redirect('/dashboard_fotografo/registro')


def páginasembranco(request):

    if request.method == 'GET':
        return render(request, 'páginas-em-branco.html')


def meuperfil(request):

    if request.method == 'GET':
        return render(request, 'meu-perfil.html')