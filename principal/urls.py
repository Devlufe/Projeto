from django.urls import path
from . import views



urlpatterns = [
    path('index/', views.index, name='index'),
    path('gallery-single/', views.gallerysingle, name='gallery-single'),
    path('gallery/', views.gallery, name='gallery'),
    path('about/', views.about, name='about'),
    path('contact/', views.contact, name='contact'),
    path('sample-inner-page/', views.sampleinnerpage, name='sample-inner-page'),
    path('services/', views.services, name='services'),
    

]
