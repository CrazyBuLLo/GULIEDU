
from django import forms
from captcha.fields import CaptchaField
from .models import UserProfile, EmailVerifyCode


class UserRegisterForm(forms.Form):
    email = forms.EmailField(required=True)
    password = forms.CharField(required=True, min_length=3, max_length=15, error_messages={
        'required': '密码必须填写',
        'min_length': '密码至少三位',
        'max_length': '密码不能超过十五位'
    })
    captcha = CaptchaField()

class UserLoginForm(forms.Form):
    email = forms.EmailField(required=True)
    password = forms.CharField(required=True, error_messages={
        'required': '密码必须填写',
    })

class UserForgetForm(forms.Form):
    email = forms.EmailField(required=True)
    captcha = CaptchaField()

class UserResetForm(forms.Form):
    password = forms.CharField(required=True, min_length=3, max_length=15, error_messages={
        'required': '密码必须填写',
        'min_length': '密码至少三位',
        'max_length': '密码不能超过十五位'
    })
    password1 = forms.CharField(required=True, min_length=3, max_length=15, error_messages={
        'required': '密码必须填写',
        'min_length': '密码至少三位',
        'max_length': '密码不能超过十五位'
    })


class UserChangeImageForm(forms.ModelForm):
    class Meta:
        model = UserProfile
        fields = ['image']


class UserChangeInfoForm(forms.ModelForm):
    class Meta:
        model = UserProfile
        fields = ['nick_name', 'birthday', 'gender', 'address', 'phone']


class UserChangeEmailForm(forms.ModelForm):
    class Meta:
        model = EmailVerifyCode
        fields = ['email']


class UserResetEmailForm(forms.ModelForm):
    class Meta:
        model = EmailVerifyCode
        fields = ['email', 'code']