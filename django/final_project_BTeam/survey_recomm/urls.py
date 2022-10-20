from django.urls import path

from survey_recomm import views

urlpatterns = [
    path('survey_recomm_form', views.survey_recomm_form),
    path('dog_cat_result', views.dog_cat_result),

]