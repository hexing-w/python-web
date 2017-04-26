# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

from django.contrib import admin

# Create your models here.

class BlogsPost(models.Model):
	title = models.CharField(max_length = 150)
	body = models.TextField()
	timestamp = models.DateTimeField()

#继承 admin.ModelAdmin父类 显示BlogPost 的title time 
class BlogPostAdmin(admin.ModelAdmin):
	list_display = ('title','timestamp')

admin.site.register(BlogsPost,BlogPostAdmin)
