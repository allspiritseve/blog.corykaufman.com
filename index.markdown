---
layout: page
title: Mind like water
description: 'Mind like water is a blog about the internet, procrastination and maybe cooking once in a while.'
---

<h1>Posts</h1>
<ul itemscope="itemscope" itemtype="http://schema.org/Blog">
  {% for post in site.posts %}
    {% unless post.next %}
      <h2>{{ post.date | date: '%Y' }}</h2>
    {% else %}
      {% capture year %}{{ post.date | date: '%Y' }}{% endcapture %}
      {% capture next_year %}{{ post.next.date | date: '%Y' }}{% endcapture %}
      {% if year != next_year %}
        <h2>{{ post.date | date: '%Y' }}</h2>
      {% endif %}
    {% endunless %}
    
    <li itemprop="blogPost" itemscope="itemscope" itemtype="http://schema.org/BlogPosting">  
      <a href="{{ post.url }}" itemprop="url"><span itemprop="name">{{ post.title }}</span></a>
      <span itemprop="datePublished">{{ post.date | date: '%A, %B&nbsp;%e,&nbsp;%Y' }}</span>
    </li>
  {% endfor %}
</ul>

<h1>Notebook</h1>

<a href="books.html">Books I'd like to read</a>
