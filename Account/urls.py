# from django.urls import path, include
from django.conf.urls import url, include
from django.contrib import admin

from Account.views import RegisterView, LoginView, ChangePasswordView


urlpatterns = [
    url('register/', RegisterView.as_view() , name='register'),
    url('login/', LoginView.as_view() , name='login'),
    url('update-password/', ChangePasswordView.as_view() , name='update-password'),
]



