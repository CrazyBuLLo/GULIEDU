from django.shortcuts import render
from .forms import UserAskForm, UserCommentForm
from django.http import JsonResponse
from .models import *
from orgs.models import *
from tools.decorators import login_decorator

# Create your views here.
def user_ask(request):
    user_ask_form = UserAskForm(request.POST)
    if user_ask_form.is_valid():
        # form保存相当于model也保存了
        user_ask_form.save(commit=True)

        # 用了forms.ModelForm就可以省略以下步骤，user_ask_form.save(commit=True)这句代码已经包括了以下步骤
        # name = user_ask_form.cleaned_data['name']
        # phone = user_ask_form.cleaned_data['phone']
        # course = user_ask_form.cleaned_data['course']
        #
        # a = UserAsk()
        # a.name = name
        # a.phone = phone
        # a.course = course
        # a.save()

        return JsonResponse({'status': 'ok', 'msg': '咨询成功'})
    else:
        return JsonResponse({'status': 'fail', 'msg': '咨询失败'})


@login_decorator
def user_love(request):
    loveid = request.GET.get('loveid', '')
    lovetype = request.GET.get('lovetype', '')

    if loveid and lovetype:
        # 如果收藏的id和type同时存在，那么我们首先要去到收藏表当中去查找有没有这个用户的这个收藏记录
        obj = None
        if int(lovetype) == 1:
            obj = OrgInfo.objects.filter(id=int(loveid))[0]
        if int(lovetype) == 2:
            obj = CourseInfo.objects.filter(id=int(loveid))[0]
        if int(lovetype) == 3:
            obj = TeacherInfo.objects.filter(id=int(loveid))[0]



        love = UserLove.objects.filter(love_id=loveid, love_type=lovetype, love_man=request.user)
        if love:
            # 如果本来已经存在收藏这个东西的记录，那么我们需要判断收藏的状态，如果收藏状态为真，代表之前收藏过，并且现在的页面上应显示的是取消收藏，代表着这次点击是为了取消收藏
            if love[0].love_status:
                love[0].love_status = False
                love[0].save()
                obj.love_num -= 1
                obj.save()
                return JsonResponse({'status': 'ok', 'msg': '收藏'})
            # 如果收藏状态为假，代表之前收藏过，并且又取消了收藏，并且现在的页面上应显示的是收藏，代表着这次点击是为了收藏
            else:
                love[0].love_status = True
                love[0].save()

                obj.love_num += 1
                obj.save()
                return JsonResponse({'status': 'ok', 'msg': '取消收藏'})

        else:
            # 如果之前没有收藏过这个东西，那么代表着表当中没有这个记录，所以，我们需要先创建这个记录对象，然后把这个记录的状态改为true
            a = UserLove()
            a.love_man = request.user
            a.love_id = loveid
            a.love_type = int(lovetype)
            a.love_status = True
            a.save()

            obj.love_num += 1
            obj.save()
            return JsonResponse({'status': 'ok', 'msg': '取消收藏'})
    else:
        return JsonResponse({'status': 'fail', 'msg': '失败'})


def user_comment(request):
    user_comment_form = UserCommentForm(request.POST)
    if user_comment_form.is_valid():
        course = user_comment_form.cleaned_data['course']
        content = user_comment_form.cleaned_data['content']
        a = UserComment()
        a.comment_man = request.user
        # 映射，传过来的是course的id
        a.comment_course_id = course
        a.comment_content = content
        a.save()
        return JsonResponse({'status': 'ok', 'msg': '评论成功'})
    else:
        return JsonResponse({'status': 'fail', 'msg': '评论失败'})


def user_deletelove(request):
    loveid = request.GET.get('loveid', '')
    lovetype = request.GET.get('lovetype', '')
    if loveid and lovetype:
        userlove_list = UserLove.objects.filter(love_man=request.user, love_type=int(lovetype), love_id=int(loveid), love_status=True)
        if userlove_list:
            userlove = userlove_list[0]
            userlove.love_status = False
            userlove.save()
            return JsonResponse({'status': 'ok', 'msg': '删除收藏成功'})
        else:
            return JsonResponse({'status': 'ok', 'msg': '删除收藏失败'})
    else:
        return JsonResponse({'status': 'ok', 'msg': '删除收藏失败'})


