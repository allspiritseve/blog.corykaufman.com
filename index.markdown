---
layout: page
title: Mind like water
description: 'Mind like water is a blog about coding, time & attention, and cooking.'
---

<h1>Posts</h1>
<ul class="posts" itemscope="itemscope" itemtype="http://schema.org/Blog">
  {% for post in site.posts %}
    <li itemprop="blogPost" itemscope="itemscope" itemtype="http://schema.org/BlogPosting">  
      <a href="{{ post.url }}" itemprop="url"><span itemprop="name">{{ post.title }}</span></a>
      <span class="published" itemprop="datePublished">{{ post.date | date: '%A, %B&nbsp;%e,&nbsp;%Y' }}</span>
    </li>
  {% endfor %}
</ul>

<h1>Pieces</h1>

<ul itemscope="itemscope" itemtype="http://schema.org/Blog">
  <li><a href="books.html">Books I'd like to read</a></li>
</ul>
