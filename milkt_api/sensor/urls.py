from django.urls import path, include
from sensor import views

urlpatterns = [
    path('sensor_data_post/', views.sensor_data_post),
    path('sensor_data_show/',views.sensor_data_show, name='home'),
    path('sensor_create/', views.sensor_create),
    path('sensor_read/', views.sensor_read),
    path('sensor_update/<int:id>', views.sensor_update),
    path('sensor_delete/<int:id>', views.sensor_delete),
    path('cow_sensor_read/', views.cow_sensor_read),
    path('cow_sensor_create/', views.cow_sensor_create),
    path('cow_sensor_update/<int:id>', views.cow_sensor_update),
    path('cow_sensor_delete/<int:id>', views.cow_sensor_delete),
    path('command_create/', views.command_create),
    path('command_read/', views.command_read),
    path('command_update/<int:id>', views.command_update),
    path('command_delete/<int:id>', views.command_delete),
    path('farm_create/', views.farm_create),
    path('farm_read/', views.farm_read),
    path('farm_update/<int:id>', views.farm_update),
    path('farm_delete/<int:id>', views.farm_delete),
    path('cow_create/', views.cow_create),
    path('cow_read/', views.cow_read),
    path('cow_update/<int:id>', views.cow_update),
    path('cow_delete/<int:id>', views.cow_delete),
    path('user_create/', views.user_create),
    path('user_read/', views.user_read),
    path('user_update/<int:id>', views.user_update, name="update"),
    path('user_delete/<int:id>', views.user_delete),
    path('log_read', views.log_read)
]
