# _*_ encoding=utf-8 _*_
from __future__ import unicode_literals
from datetime import datetime

from django.db import models

# Create your models here.


class Notes(models.Model):
    name = models.CharField(max_length=200, verbose_name=u"标题")
    desc = models.CharField(max_length=300, verbose_name=u"笔记描述")
    content = models.TextField(verbose_name=u"笔记内容")
    fav_nums = models.IntegerField(default=0, verbose_name=u"收藏人数")
    image = models.ImageField(upload_to="notes/%Y/%m", verbose_name=u"封面图")
    click_nums = models.IntegerField(default=0, verbose_name=u"点击数")
    category = models.CharField(default="笑话", max_length=20, verbose_name=u"笔记类别")
    tag = models.CharField(default="", verbose_name=u"笔记标签", max_length=21)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"笔记"
        verbose_name_plural = verbose_name

    def get_user(self):
        return self.usernotes_set.all()[0]
