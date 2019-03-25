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
from django.urls import path
from django.conf.urls import include, url
from .views import *

urlpatterns = [
    url(r'^org_list/$', org_list, name='org_list'),
    url(r'^org_detail/(\d+)/$', org_detail, name='org_detail'),
    url(r'^org_detail_course/(\d+)/$', org_detail_course, name='org_detail_course'),
    url(r'^org_detail_desc/(\d+)/$', org_detail_desc, name='org_detail_desc'),
    url(r'^org_detail_teachers/(\d+)/$', org_detail_teachers, name='org_detail_teachers'),
]
