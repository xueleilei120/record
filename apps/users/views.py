# _*_ encoding:utf-8 _*_
from django.shortcuts import render
from django.views.generic.base import View

from users.models import Banner
# Create your views here.

# 首页
class IndexView(View):
    def get(self, request):
        all_banner = Banner.objects.all().order_by('index')

        return render(request, 'index.html', {
            'all_banner': all_banner
        })
