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
    url(r'^user_ask/$', user_ask, name='user_ask'),
    # ajax请求路径里面不用放参数
    url(r'^user_love/$', user_love, name='user_love'),
    url(r'^user_deletelove/$', user_deletelove, name='user_deletelove'),
    url(r'^user_comment/$', user_comment, name='user_comment'),
]
























