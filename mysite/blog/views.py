# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.shortcuts import render,render_to_response
from blog.models import *
from blog.form import CommentForm
from django.http import Http404

# Create your views here.
# def index(request):
# 	# 获取数据库所拥有的BlogPost对象
# 	blog_list = BlogsPost.objects.all()
# 	return render_to_response('index.html',{'blog_list':blog_list})

def blogList(request):
	blog = Blog.objects.all()
	return render_to_response('index.html',{'blog':blog})

def details(request,bid):
	try:
		blog = Blog.objects.get(id=bid)
	except Blog.DoesNotExist:
		raise Http404
	# 加载评论表单
	if request.method == 'GET':
		form = CommentForm()
	else:
		form = CommentForm(request.POST)
		if form.is_valid():
			cleaned_data = form.cleaned_data
			cleaned_data['blog'] = blog 
			Comment.objects.create(**cleaned_data)

	ctx = {
			'blog':blog,
			'comments':blog.comment_set.all().order_by('-time'),
			'form':form
	}

	return render(request,'details.html',ctx)