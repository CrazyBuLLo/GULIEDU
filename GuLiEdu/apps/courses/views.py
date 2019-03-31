from django.shortcuts import render
from .models import *
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from operations.models import UserLove, UserCourse
from django.db.models import Q
from django.contrib.auth.decorators import login_required
from tools.decorators import login_decorator

# Create your views here.
def course_list(request):
    all_courses = CourseInfo.objects.all()
    recommend_courses = all_courses.order_by('-add_time')[:3]


    keyword = request.GET.get('keyword', '')
    if keyword:
        all_courses = all_courses.filter(Q(name__icontains=keyword) | Q(desc__icontains=keyword) | Q(detail__icontains=keyword))

    sort = request.GET.get('sort', '')
    if sort:
        all_courses = all_courses.order_by('-' + sort)


    # 分页
    pagenum = request.GET.get('pagenum', '')
    pa = Paginator(all_courses, 3)
    try:
        pages = pa.page(pagenum)
    except PageNotAnInteger:
        pages = pa.page(1)
    except EmptyPage:
        pages = pa.page(pa.num_pages)

    return render(request, 'courses/course-list.html', {
        'all_courses': all_courses,
        'recommend_courses': recommend_courses,
        'pages': pages,
        'sort': sort,
        'keyword': keyword
    })


def course_detail(request, course_id):
    if course_id:
        course = CourseInfo.objects.filter(id=course_id)[0]

        relate_courses = CourseInfo.objects.filter(category=course.category).exclude(id=int(course_id))[:2]

        course.click_num += 1
        course.save()


        # lovecourse和loveorg用来储存用户收藏这个东西的状态，在模板当中根据这个状态来确定页面加载时候，显示的是收藏还是取消收藏
        lovecourse = False
        loveorg = False
        if request.user.is_authenticated:
            love_course = UserLove.objects.filter(love_man=request.user, love_id=int(course_id), love_type=2, love_status=True)
            love_org = UserLove.objects.filter(love_man=request.user, love_id=int(course.orginfo.id), love_type=1, love_status=True)
            if love_course:
                lovecourse = True
            if love_org:
                loveorg = True

        return render(request, 'courses/course-detail.html', {
            'course_id': course_id,
            'course': course,
            'relate_courses': relate_courses,
            'lovecourse': lovecourse,
            'loveorg': loveorg,

        })


@login_decorator
def course_video(request, course_id):
    if course_id:

        course = CourseInfo.objects.filter(id=course_id)[0]

        usercourse_list = UserCourse.objects.filter(study_man=request.user, study_course=course)

        if not usercourse_list:
            # 添加该课程到用户学习课程中
            a = UserCourse(study_man=request.user, study_course=course)
            a.save()

            # 课程与机构学习人数增加
            course.study_num += 1
            course.save()

            # 第一种方法
            # usercourse_list = UserCourse.objects.filter(study_man=request.user)
            # course_list = [usercourse.study_course for usercourse in usercourse_list if usercourse.study_course.orginfo.id == course.orginfo.id].pop(course)
            # if course_list:
            #     course.orginfo.study_num += 1
            #     course.orginfo.save()

            # 第二种方法
            # 第一步：从学习课程表当中查找当前个人学习所有的课程
            usercourse_list = UserCourse.objects.filter(study_man=request.user)
            course_list = [usercourse.study_course for usercourse in usercourse_list]
            org_list = list(set([course.orginfo for course in course_list]))
            if course.orginfo not in org_list:
                course.orginfo.study_num += 1
                course.orginfo.save()


        # 学过该课的同学还学过什么课程
        # 第一步：我们需要从中间表用户课程表当中找到学过该课的所有对象
        usercourse_list = UserCourse.objects.filter(study_course=course)

        # 第二步：根据找到对象，遍历他们拿到所有学过该课的用户
        user_list = [usercourse.study_man for usercourse in usercourse_list]

        # 第三步：再根据找到的用户，从中间用户学习课程表中，找到所有用户学习其他课程的整个对象,需要用到exclude去除当前学过的这个课程对象
        usercourse_list = UserCourse.objects.filter(study_man__in=user_list).exclude(study_course=course)

        # 第四步：从获取到的用户课程列表中，拿到我们需要的其他课程
        course_list = list(set([usercourse.study_course for usercourse in usercourse_list]))


        return render(request, 'courses/course-video.html', {
            'course_id': course_id,
            'course': course,
            'course_list': course_list
        })

def course_comment(request, course_id):
    if course_id:
        course = CourseInfo.objects.filter(id=course_id)[0]
        all_comments = course.usercomment_set.all()[:10]

        # 学过该课的同学还学过什么课程
        # 第一步：我们需要从中间表用户课程表当中找到学过该课的所有对象
        usercourse_list = UserCourse.objects.filter(study_course=course)

        # 第二步：根据找到对象，遍历他们拿到所有学过该课的用户
        user_list = [usercourse.study_man for usercourse in usercourse_list]

        # 第三步：再根据找到的用户，从中间用户学习课程表中，找到所有用户学习其他课程的整个对象,需要用到exclude去除当前学过的这个课程对象
        usercourse_list = UserCourse.objects.filter(study_man__in=user_list).exclude(study_course=course)

        # 第四步：从获取到的用户课程列表中，拿到我们需要的其他课程
        course_list = list(set([usercourse.study_course for usercourse in usercourse_list]))

        return render(request, 'courses/course-comment.html', {
            'course': course,
            'all_comments': all_comments,
            'course_list': course_list
        })