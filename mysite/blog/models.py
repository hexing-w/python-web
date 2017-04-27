# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

from django.contrib import admin

# Create your models here.

# class BlogsPost(models.Model):
# 	title = models.CharField(max_length = 150)
# 	body = models.TextField()
# 	timestamp = models.DateTimeField()
# 	class Meta:
# 		ordering = ['-timestamp']

# #继承 admin.ModelAdmin父类 显示BlogPost 的title time 
# class BlogPostAdmin(admin.ModelAdmin):
# 	list_display = ('title','timestamp')


# 博客分类
class Category(models.Model):
	name = models.CharField("名称",max_length = 30)

	def __unicode__(self):
		return self.name

# 博客标签
class Tag(models.Model):
	name = models.CharField('名称',max_length = 16)

	def __unicode__(self):
		return self.name

class Blog(models.Model):
	title = models.CharField('标题',max_length = 32)
	author = models.CharField('作者',max_length = 16)
	content = models.TextField('内容')
	time = models.DateTimeField('发布时间',auto_now_add = True)
	category = models.ForeignKey(Category,verbose_name = '分类')
	tags = models.ManyToManyField(Tag,verbose_name='标签')
	class Meta:
		ordering = ['-time']

	def __unicode__(self):
		return self.title

class Comment(models.Model):
	blog = models.ForeignKey(Blog,verbose_name = '博客')
	name = models.CharField('名字',max_length = 16)
	email = models.EmailField('邮箱')
	comment = models.CharField('评论',max_length = 100)
	time = models.DateTimeField("发布时间",auto_now_add = True)

	def __unicode__(self):
		return self.comment


admin.site.register([Category,Tag,Blog])
