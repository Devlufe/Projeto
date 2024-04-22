from django.urls import path
from . import views



urlpatterns = [
    path('autenticação-esqueci-senha/', views.autenticaçãoesquecisenha, name='autenticação-esqueci-senha'),
    path('login-de-autenticação/', views.logindeautenticação, name='login-de-autenticação'),
    path('registro/', views.registro, name='registro'),
    path('inicio/', views.inicio, name='inicio'),
    path('redefinir-senha/', views.redefinirsenha, name='redefinir-senha'),
    path('páginas-em-branco/', views.páginasembranco, name='páginas-em-branco'),
    path('meu-perfil/', views.meuperfil, name='meu-perfil'),
   
]