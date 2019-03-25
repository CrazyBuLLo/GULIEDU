from django.shortcuts import render
from .models import *
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage

# Create your views here.
def course_list(request):
    all_courses = CourseInfo.objects.all()
    recommend_courses = all_courses.order_by('-add_time')[:3]

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
        'sort': sort
    })


def course_detail(request, course_id):
    if course_id:
        course = CourseInfo.objects.filter(id=course_id)[0]

        relate_courses = CourseInfo.objects.filter(category=course.category).exclude(id=int(course_id))

        return render(request, 'courses/course-detail.html', {
            'course_id': course_id,
            'course': course,
            'relate_courses': relate_courses
        })