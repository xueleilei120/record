# _*_ encoding=utf-8 _*_
from __future__ import unicode_literals
from datetime import datetime

from django.db import models
from DjangoUeditor.models import UEditorField

# Create your models here.


class Notes(models.Model):
    author = models.CharField(max_length=20, verbose_name=u"作者", default='')
    name = models.CharField(max_length=200, verbose_name=u"标题")
    desc = models.CharField(max_length=300, verbose_name=u"笔记描述")
    content = UEditorField(verbose_name=u'笔记内容', width=600, height=300,
                           imagePath="contents/ueditor/", filePath="contents/ueditor/", default='')
    fav_nums = models.IntegerField(default=0, verbose_name=u"收藏人数")
    image = models.ImageField(upload_to="notes/%Y/%m", verbose_name=u"封面图")
    click_nums = models.IntegerField(default=0, verbose_name=u"点击数")
    category = models.CharField(default="笑话", max_length=20, verbose_name=u"笔记类别")
    tag = models.CharField(default="", verbose_name=u"笔记标签", max_length=21)
    is_public = models.BooleanField(default=True, verbose_name=u"是否公开")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"笔记"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.name
