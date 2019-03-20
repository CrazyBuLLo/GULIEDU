import xadmin

from .models import CityInfo, OrgInfo, TeacherInfo

# Create your models here.
class CityInfoXadmin(object):
    list_display = ['name', 'add_time']
    # model_icon = 'fa fa-balance-scale'


class OrgInfoXadmin(object):
    list_display = ['image', 'name', 'course_num', 'study_num', 'love_num', 'click_num', 'category', 'cityinfo']


class TeacherInfoXadmin(object):
    list_display = ['image', 'name', 'work_year', 'work_position', 'work_style', 'work_company', 'age', 'gender', 'love_num', 'click_num']

xadmin.site.register(CityInfo, CityInfoXadmin)
xadmin.site.register(OrgInfo, OrgInfoXadmin)
xadmin.site.register(TeacherInfo, TeacherInfoXadmin)










