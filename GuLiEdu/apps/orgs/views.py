from django.shortcuts import render
from .models import *
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from operations.models import UserLove
from courses.models import *
from django.db.models import Q


# Create your views here.
def org_list(request):
    all_orgs = OrgInfo.objects.all()
    all_citys = CityInfo.objects.all()
    sort_orgs = all_orgs.order_by('-love_num')[:3]

    # 全局搜索功能过滤
    keyword = request.GET.get('keyword', '')
    if keyword:
        # contains是包含，icontains是不区分大小写
        all_orgs = all_orgs.filter(Q(name__icontains=keyword) | Q(desc__icontains=keyword) | Q(detail__icontains=keyword))


    # 按照机构类别过滤
    cate = request.GET.get('cate', '')
    if cate:
        all_orgs = all_orgs.filter(category=cate)

    # 按照所在地区进行过滤
    cityid = request.GET.get('cityid', '')
    if cityid:
        all_orgs = all_orgs.filter(cityinfo_id=cityid)

    # 排序
    sort = request.GET.get('sort', '')
    if sort:
        all_orgs = all_orgs.order_by('-' + sort)

    # 分页代码，固定的
    pagenum = request.GET.get('pagenum', '')
    pa = Paginator(all_orgs, 3)
    try:
        pages = pa.page(pagenum)
    except PageNotAnInteger:
        pages = pa.page(1)
    except EmptyPage:
        pages = pa.page(pa.num_pages)

    return render(request, 'orgs/org-list.html', {
        'all_orgs': all_orgs,
        'pages': pages,
        'all_citys': all_citys,
        'sort_orgs': sort_orgs,
        'cate': cate,
        'cityid': cityid,
        'sort': sort,
        'keyword': keyword
    })

def org_detail(request, org_id):
    if org_id:
        org = OrgInfo.objects.filter(id=int(org_id))[0]

        org.click_num += 1
        org.save()

        # 在返回页面数据的时候，需要返回收藏这个机构的状态，根据状态让模板页面显示收藏还是取消收藏，而不能让页面固定显示收藏
        lovestatus = False
        if request.user.is_authenticated:
            love = UserLove.objects.filter(love_man=request.user, love_id=int(org_id), love_type=1, love_status=True)
            if love:
                lovestatus = True



        return render(request, 'orgs/org-detail-homepage.html', {
            'org': org,
            'detail_type': 'home',
            'lovestatus': lovestatus
        })

def org_detail_course(request, org_id):
    if org_id:
        org = OrgInfo.objects.filter(id=int(org_id))[0]

        lovestatus = False
        if request.user.is_authenticated:
            love = UserLove.objects.filter(love_man=request.user, love_id=int(org_id), love_type=1, love_status=True)
            if love:
                lovestatus = True

        all_courses = org.courseinfo_set.all()

        # 分页代码，固定的
        pagenum = request.GET.get('pagenum', '')
        pa = Paginator(all_courses, 3)
        try:
            pages = pa.page(pagenum)
        except PageNotAnInteger:
            pages = pa.page(1)
        except EmptyPage:
            pages = pa.page(pa.num_pages)

        return render(request, 'orgs/org-detail-course.html', {
            'org': org,
            'pages': pages,
            'detail_type': 'course',
            'lovestatus': lovestatus
        })

def org_detail_desc(request, org_id):
    if org_id:
        org = OrgInfo.objects.filter(id=int(org_id))[0]

        lovestatus = False
        if request.user.is_authenticated:
            love = UserLove.objects.filter(love_man=request.user, love_id=int(org_id), love_type=1, love_status=True)
            if love:
                lovestatus = True

        return render(request, 'orgs/org-detail-desc.html', {
            'org': org,
            'detail_type': 'desc',
            'lovestatus': lovestatus
        })

def org_detail_teachers(request, org_id):
    if org_id:
        org = OrgInfo.objects.filter(id=int(org_id))[0]

        lovestatus = False
        if request.user.is_authenticated:
            love = UserLove.objects.filter(love_man=request.user, love_id=int(org_id), love_type=1, love_status=True)
            if love:
                lovestatus = True

        return render(request, 'orgs/org-detail-teachers.html', {
            'org': org,
            'detail_type': 'teacher',
            'lovestatus': lovestatus
        })

def teacher_list(request):
    teachers = TeacherInfo.objects.all()
    sort_teachers = teachers.order_by('-love_num')[:3]

    keyword = request.GET.get('keyword', '')
    if keyword:
        teachers = teachers.filter(name__icontains=keyword)

    sort = request.GET.get('sort', '')
    if sort:
        teachers = teachers.order_by('-' + sort)

    # 分页代码，固定的
    pagenum = request.GET.get('pagenum', '')
    pa = Paginator(teachers, 3)
    try:
        pages = pa.page(pagenum)
    except PageNotAnInteger:
        pages = pa.page(1)
    except EmptyPage:
        pages = pa.page(pa.num_pages)

    return render(request, 'orgs/teachers-list.html', {
        'teachers': teachers,
        'pages': pages,
        'sort': sort,
        'sort_teachers': sort_teachers,
        'keyword': keyword
    })

def teacher_detail(request, teacher_id):
    if teacher_id:
        teacher = TeacherInfo.objects.filter(id=teacher_id)[0]
        sort_teachers = TeacherInfo.objects.filter(work_company_id=teacher.work_company_id).order_by('-love_num')[:3]

        course_list = CourseInfo.objects.filter(teacherinfo_id=teacher_id)

        teacher.click_num += 1
        teacher.save()

        loveteacher = False
        loveorg = False
        if request.user.is_authenticated:
            love = UserLove.objects.filter(love_man=request.user, love_id=int(teacher_id), love_type=3, love_status=True)
            if love:
                loveteacher = True
            love1 = UserLove.objects.filter(love_man=request.user, love_id=int(teacher.work_company_id), love_type=1, love_status=True)
            if love1:
                loveorg = True



        return render(request, 'orgs/teacher-detail.html', {
            'teacher': teacher,
            'course_list': course_list,
            'sort_teachers': sort_teachers,
            'loveteacher': loveteacher,
            'loveorg': loveorg
        })