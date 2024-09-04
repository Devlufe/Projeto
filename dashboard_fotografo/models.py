from django.db import models
from django.contrib.auth.models import User
from pyexpat import model



class UserProfile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    email = models.EmailField()
    organization = models.CharField(max_length=100)
    profile_image = models.ImageField(upload_to='profile_images/',default='default-profile-image.jpg', blank=True)

    def __str__(self):
        return self.user.username

class Categoria (models.Model):
    titulo = models.CharField(max_length=40)
    def __str__(self):
        return self.titulo
    
class Albuns(models.Model):
    imagem = models.ImageField(upload_to="imagem_album")
    Nome_Album = models.CharField(max_length=50)
    categoria = models.ForeignKey(Categoria, on_delete= models.CASCADE)
    

