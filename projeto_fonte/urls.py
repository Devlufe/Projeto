
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('usuarios/', include('usuarios.urls')),
    path('principal/', include('principal.urls')),
    path('dashboard_fotografo/' ,include("dashboard_fotografo.urls")),
]
