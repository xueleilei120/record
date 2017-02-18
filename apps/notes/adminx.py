#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
@author: liuyc
@file: adminx.py
@time: 2017/1/6 22:12
@describe:
"""
import xadmin


from .models import Notes


class NotesAdmin(object):
    # 后台中点击邮箱验证码 要显示的字段
    list_display = ['name','desc', 'content','fav_nums', 'click_nums', 'add_time']
    # 后台要搜索的字段
    search_fields = ['name','desc', 'content','fav_nums', 'click_nums', 'add_time']
    # 后台过滤器
    list_filter = ['name','desc', 'content','fav_nums', 'click_nums', 'add_time']


xadmin.site.register(Notes, NotesAdmin)

