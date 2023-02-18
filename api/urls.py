# from django.urls import path, include
from django.conf.urls import url, include
from django.contrib import admin


urlpatterns = [
    url('account/', include('Account.urls')),
    url('blog/', include('blogapp.urls')),
]



