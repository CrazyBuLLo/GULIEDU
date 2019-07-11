from django.shortcuts import redirect, reverse
from django.http import JsonResponse


def login_decorator(func):
    def inner(request, *args, **kwargs):
        if request.user.is_authenticated:
            return func(request, *args, **kwargs)
        else:
            if request.is_ajax():
                # ajax请求不能用重定向,登陆后只能返回首页。
                return JsonResponse({'status': 'nologin', 'msg': '请登录'})

            # 拿到目前访问的完整url，不只是路径部分
            url = request.get_full_path()
            ret = redirect(reverse('users:user_login'))
            ret.set_cookie('url', url)
            return ret

    return inner

