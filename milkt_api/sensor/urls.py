from django.urls import path, include
from sensor import views

urlpatterns = [
    path('main/', views.main),
    path('sensor/', views.sensor, name='home'),
    path('sensor_data_post/', views.sensor_data_post),
    path('sensor_data_show/',views.sensor_data_show),
    path('farm_create/', views.farm_create),
    path('farm_read/', views.farm_read),
    path('farm_update/', views.farm_update),
    path('farm_delete/', views.farm_delete),
    path('sensor_create/', views.sensor_create),
    path('sensor_read/', views.sensor_read),
    path('sensor_update/<int:id>', views.sensor_update),
    path('sensor_delete/<int:id>', views.sensor_delete),
    # path('cow_sensor_create/', views.cow_sensor_create),
    # path('cow_sensor_read/', views.cow_sensor_read),
    # path('cow_sensor_update/', views.cow_sensor_update),
    # path('cow_sensor_delete/', views.cow_sensor_delete),
    # path('command_create/', views.command_create),
    # path('command_read/', views.command_read),
    # path('command_update/', views.command_update),
    # path('command_delete/', views.command_delete),
    # path('log_read', views.log_read)
]
