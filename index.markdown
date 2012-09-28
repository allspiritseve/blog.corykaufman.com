---
layout: page
title: Mind like water
---

<ul itemscope="itemscope" itemtype="http://schema.org/Blog">
  {% for post in site.posts %}
    <li itemprop="blogPost" itemscope="itemscope" itemtype="http://schema.org/BlogPosting">  
      <a href="{{ post.url }}" itemprop="url"><span itemprop="name">{{ post.title }}</span></a>
      <span itemprop="datePublished">{{ post.date | date: '%A, %B %e, %Y' }}</span>
    </li>
  {% endfor %}
</ul>

<a href="books.html">Books I'd like to read</a>
