from django.urls import path
from .import views
from .views import enviar_foto # Importe ambas as funções do mesmo módulo
from django.conf import settings
from django.conf.urls.static import static





urlpatterns = [
    path('index/', views.index, name='index'),
    path('gallery-single/', views.gallerysingle, name='gallery-single'),
    path('gallery/', views.gallery, name='gallery'),
    path('about/', views.about, name='about'),
    path('contact/', views.contact, name='contact'),
    path('sample-inner-page/', views.sampleinnerpage, name='sample-inner-page'),
    path('services/', views.services, name='services'),

    path('enviar-foto/', enviar_foto, name='enviar_foto'),
    
    # Outras URLs do seu aplicativo...
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)