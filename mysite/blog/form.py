# -*- coding: utf-8 -*-

from django import forms

class CommentForm(forms.Form):

	name = forms.CharField(label='名字',max_length=16,error_messages={
		'required':'请填写您的名称',
		'max_length':'最长只能16位哦'
		})

	email = forms.EmailField(label='邮箱',error_messages={
		'required':'请填写您的邮箱',
		'invalid':'邮箱格式不正确哦'
		})

	comment = forms.CharField(label='评论内容',error_messages={
        'required':'请填写您的评论内容！',
        'max_length':'评论内容超出字数限制'
    })