from django.urls import path
from . import views
from .views import my_profile, inicio




urlpatterns = [
        path('my_profile/', my_profile, name='my_profile'),
        path('inicio/', inicio, name='inicio'),
        path('autenticação-esqueci-senha/', views.autenticaçãoesquecisenha, name='autenticação-esqueci-senha'),
        path('login-de-autenticação/', views.logindeautenticação, name='login-de-autenticação'),
        path('registro/', views.registro, name='registro'),
        path('inicio/', views.inicio, name='inicio'),
        path('redefinir-senha/', views.redefinirsenha, name='redefinir-senha'),
        path('galeria/', views.galeria, name='galeria'),
] 

