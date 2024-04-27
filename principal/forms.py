from django import forms
from .models import Foto

class FotoForm(forms.ModelForm):
    class Meta:
        model = Foto
        fields = ['titulo', 'descricao', 'imagem', 'categoria', 'fotografo']  # Campos do modelo Foto que deseja exibir no formulário
