# from django.urls import path, include
from django.conf.urls import url, include

from blogapp.views import  BlogView, PublicBlogView


urlpatterns = [
    url('blogs/', BlogView.as_view() , name='blogs'),
    url('publicblogs/', PublicBlogView.as_view(), name='publicblogs')
  
]



