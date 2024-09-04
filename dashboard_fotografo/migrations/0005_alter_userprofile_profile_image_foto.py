# Generated by Django 5.0.2 on 2024-09-04 18:48

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dashboard_fotografo', '0004_albuns_imagem'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userprofile',
            name='profile_image',
            field=models.ImageField(blank=True, default='default-profile-image.jpg', upload_to='profile_images/'),
        ),
        migrations.CreateModel(
            name='foto',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('arquivo', models.ImageField(upload_to='imagens_do_Album')),
                ('album', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='dashboard_fotografo.albuns')),
            ],
        ),
    ]