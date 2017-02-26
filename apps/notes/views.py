# -*- coding: utf-8 -*-
from django.shortcuts import render, get_object_or_404, redirect
from django.views.generic import View
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger
from django.http import HttpResponse, HttpResponseRedirect
from django.db.models import Q
from django.core.urlresolvers import reverse

from notes.models import Notes
from notes.forms import NodeEditorForm
# Create your views here.


class NotesView(View):
    """
    笔记列表
    """
    def get(self, request):
        all_notes = Notes.objects.all().order_by("-add_time")
        # 搜索
        search_keywords = request.GET.get('keywords', '')
        if search_keywords:
            all_notes = all_notes.filter(Q(author__icontains=search_keywords) | Q(name__icontains=search_keywords) |
                                         Q(content__icontains=search_keywords))
        # 排序sort
        sort = request.GET.get('sort', '')

        if sort == 'hot':
            all_notes = all_notes.filter(is_public=True).order_by("-click_nums")
        elif sort == 'private':
            # 用户是否登陆
            if not request.user.is_authenticated():
                 return HttpResponseRedirect(reverse("login"))
            all_notes = all_notes.filter(author=request.user)
        else:
            all_notes = all_notes.filter(is_public=True)

        # 对课程进行分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(all_notes, 6, request=request)

        notes = p.page(page)
        return render(request, 'note-list.html', {
            'all_notes': notes,
            'sort': sort,
        })


class NotesDetailView(View):
    def get(self, request, note_id):
        note = Notes.objects.get(id=int(note_id))

        # 增加点击数
        note.click_nums += 1
        note.save()
        return render(request, 'node-detail.html', {
            'note': note,
        })


class NotesEditorView(View):
    """编辑笔记"""
    def get(self, request, note_id):
        # 用户是否登陆
        if not request.user.is_authenticated():
            return HttpResponseRedirect(reverse("login"))
        note = Notes.objects.get(id=int(note_id))
        form = NodeEditorForm(instance=note)
        return render(request, 'node_editor.html', {
            'form': form
        })

    def post(self, request, note_id):
        note = Notes.objects.get(id=int(note_id))
        note_form = NodeEditorForm(request.POST, request.FILES, instance=note)
        if note_form.is_valid():
            note = note_form.save(commit=False)
            note.save()
            return render(request, 'node-detail.html', {
                'note': note,
            })
        return render(request, 'node_editor.html', {
            'form': note_form,
        })

class NewEditorView(View):
    """
    增加新文章
    """
    def get(self, request):
        # 用户是否登陆
        if not request.user.is_authenticated():
             return HttpResponseRedirect(reverse("login"))
        form = NodeEditorForm()
        return render(request, 'node_editor.html', {
            'form': form,
        })

    def post(self, request):
        if not request.user.is_authenticated():
            return HttpResponseRedirect(reverse("login"))
        note_form = NodeEditorForm(request.POST, request.FILES)
        if note_form.is_valid():
            note = note_form.save(commit=False)
            note.author = request.user
            note.save()
            return render(request, 'node-detail.html', {
                'note': note,
            })

        return render(request, 'node_editor.html', {
            'form': note_form,
        })

class SearchNotesView(View):
    """
    搜索
    """
    def get(self, request):
        form = NodeEditorForm()
        return render(request, 'node_editor.html', {
            'form': form,
        })

    def post(self, request):
        note_form = NodeEditorForm(request.POST, request.FILES)
        if note_form.is_valid():
            note = note_form.save(commit=False)
            note.author = request.user
            note.save()
            return render(request, 'node-detail.html', {
                'note': note,
            })

        return render(request, 'node_editor.html', {
            'form': note_form,
        })
