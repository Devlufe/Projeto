from django.db import models

# Create your models here.
class CategoriaFotos(models.Model):
    nome = models.CharField(max_length=100)

    def __str__(self):
        return self.nome

class Fotografo(models.Model):
    nome = models.CharField(max_length=200)
    bio = models.TextField()

    def __str__(self):
        return self.nome
    
class Foto(models.Model):
    titulo = models.CharField(max_length=200)
    descricao = models.TextField()
    imagem = models.ImageField(upload_to='fotos/')
    categoria = models.ForeignKey(CategoriaFotos, on_delete=models.CASCADE)
    fotografo = models.ForeignKey(Fotografo, on_delete=models.CASCADE)
    data_postagem = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.titulo

class AgendaServico(models.Model):
    fotografo = models.ForeignKey(Fotografo, on_delete=models.CASCADE)
    data = models.DateField()
    horario_inicio = models.TimeField()
    horario_fim = models.TimeField()

    def __str__(self):
        return f"{self.fotografo.nome} - {self.data}"