from django.urls import path
from . import views
from principal.views import enviar_foto
from principal.views import enviar_foto_success




urlpatterns = [
    path('index/', views.index, name='index'),
    path('gallery-single/', views.gallerysingle, name='gallery-single'),
    path('gallery/', views.gallery, name='gallery'),
    path('about/', views.about, name='about'),
    path('contact/', views.contact, name='contact'),
    path('sample-inner-page/', views.sampleinnerpage, name='sample-inner-page'),
    path('services/', views.services, name='services'),

    path('enviar-foto/', enviar_foto, name='enviar_foto'),
    path('enviar-foto/success/', enviar_foto_success, name='enviar_foto_success'),
    # Outras URLs do seu aplicativo...
]