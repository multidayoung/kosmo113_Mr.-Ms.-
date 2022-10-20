from django.urls import path

from friends_recomm import views

urlpatterns = [
    path('recomm', views.igo),
]