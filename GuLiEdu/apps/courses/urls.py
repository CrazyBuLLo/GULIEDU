"""GuLiEdu URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.conf.urls import include, url
from .views import *

urlpatterns = [
    url(r'^course_list/$', course_list, name='course_list'),
    url(r'^course_detail/(\d+)/$', course_detail, name='course_detail'),
    url(r'^course_video/(\d+)/$', course_video, name='course_video'),
    url(r'^course_comment/(\d+)/$', course_comment, name='course_comment'),
]
