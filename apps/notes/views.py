# -*- coding: utf-8 -*-
from django.shortcuts import render
from django.views.generic import View
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger

from  notes.models import Notes
# Create your views here.


class NotesView(View):
    """
    笔记列表
    """
    def get(self, request):
        all_notes = Notes.objects.all().order_by("-add_time")
        return render(request, 'note-list.html', {
            'all_notes': all_notes,
        })


class NotesDetailView(View):
    def get(self, request, note_id):
        note = Notes.objects.get(id=int(note_id))
        return render(request, 'node-detail.html', {
            'note': note,
        })