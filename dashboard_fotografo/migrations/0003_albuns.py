# Generated by Django 5.0.2 on 2024-08-31 23:11

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dashboard_fotografo', '0002_categoria'),
    ]

    operations = [
        migrations.CreateModel(
            name='Albuns',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Nome_Album', models.CharField(max_length=50)),
                ('categoria', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='dashboard_fotografo.categoria')),
            ],
        ),
    ]
