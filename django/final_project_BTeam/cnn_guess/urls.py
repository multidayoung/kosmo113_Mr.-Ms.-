from django.urls import path

from cnn_guess import views

urlpatterns = [
    path('form', views.cnn_guess_form),
    path('res', views.cnn_guess_res),
]