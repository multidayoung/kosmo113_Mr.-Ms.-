from django.urls import path

from android_map import views

urlpatterns = [
    path('jsonTest2', views.jsonTest2),
    path('myList', views.myList),
]