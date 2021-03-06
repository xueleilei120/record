# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2017-02-26 23:20
from __future__ import unicode_literals

import DjangoUeditor.models
import datetime
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Notes',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200, verbose_name='\u6807\u9898')),
                ('desc', models.CharField(max_length=300, verbose_name='\u7b14\u8bb0\u63cf\u8ff0')),
                ('content', DjangoUeditor.models.UEditorField(default='', verbose_name='\u7b14\u8bb0\u5185\u5bb9')),
                ('fav_nums', models.IntegerField(default=0, verbose_name='\u6536\u85cf\u4eba\u6570')),
                ('image', models.ImageField(upload_to='notes/%Y/%m', verbose_name='\u5c01\u9762\u56fe')),
                ('click_nums', models.IntegerField(default=0, verbose_name='\u70b9\u51fb\u6570')),
                ('category', models.CharField(default='\u7b11\u8bdd', max_length=20, verbose_name='\u7b14\u8bb0\u7c7b\u522b')),
                ('tag', models.CharField(default='', max_length=21, verbose_name='\u7b14\u8bb0\u6807\u7b7e')),
                ('is_public', models.BooleanField(default=True, verbose_name='\u662f\u5426\u516c\u5f00')),
                ('add_time', models.DateTimeField(default=datetime.datetime.now, verbose_name='\u6dfb\u52a0\u65f6\u95f4')),
                ('author', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='\u7528\u6237')),
            ],
            options={
                'verbose_name': '\u7b14\u8bb0',
                'verbose_name_plural': '\u7b14\u8bb0',
            },
        ),
    ]
