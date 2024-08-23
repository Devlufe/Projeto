from django.urls import path
from . import views
from .views import my_profile



urlpatterns = [
    path('meu-perfil/', my_profile, name='meu-perfil'),
    path('autenticação-esqueci-senha/', views.autenticaçãoesquecisenha, name='autenticação-esqueci-senha'),
    path('login-de-autenticação/', views.logindeautenticação, name='login-de-autenticação'),
    path('registro/', views.registro, name='registro'),
    path('inicio/', views.inicio, name='inicio'),
    path('redefinir-senha/', views.redefinirsenha, name='redefinir-senha'),
    path('páginas-em-branco/', views.páginasembranco, name='páginas-em-branco'),
    path('meu-perfil/', views.my_profile, name='meu-perfil'),
   
] 

