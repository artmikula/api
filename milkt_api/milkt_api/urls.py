from django.contrib import admin
from django.urls import path, include
from django.contrib.auth import views as auth_views
from . import views

urlpatterns = [
    path('', auth_views.LoginView.as_view(), name='login'),
    path('admin/', admin.site.urls),
    # path('login/', include('sensor.urls')),
    path("accounts/", include("django.contrib.auth.urls")),
    path("register/", views.register_request, name="register"),
    path('', include('sensor.urls'))
]
