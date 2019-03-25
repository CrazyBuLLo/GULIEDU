from .models import UserAsk
from django import forms
import re

# ModelForm是Model和Form的结合，十分方便，在views中做验证时很方便
class UserAskForm(forms.ModelForm):
    class Meta:
        # 指定用哪个model做验证
        model = UserAsk
        fields = ['name', 'phone', 'course']
        # exclude = ['add_time']

        # 如果用到了所有的字段
        # fields = '__all__'

    def clean_phone(self):
        phone = self.cleaned_data['phone']
        com = re.compile('^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$')
        if com.match(phone):
            return phone
        else:
            raise forms.ValidationError('手机号码不合法')