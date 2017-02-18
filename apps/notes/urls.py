#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
@author: liuyc
@file: url.py
@time: 2017/1/14 11:13
@describe:
"""
from django.conf.urls import url, include
from django.conf.urls import url


from notes.views import NotesView, NotesDetailView

urlpatterns = [
    # 课程列表
    url(r'^list/$', NotesView.as_view(), name="note_list"),

    # 课程详情
    url(r'^detail/(?P<note_id>\d+)/$', NotesDetailView.as_view(), name="note_detail"),

]
