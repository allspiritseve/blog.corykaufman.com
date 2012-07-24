---
layout: blog
title: Mind like water
---

<ul>
  {% for post in site.posts %}
    <li>  
      <a href="{{ post.url }}">{{ post.title }}</a>
      {{ post.date | date: '%A, %B %e, %Y' }}
    </li>
  {% endfor %}
</ul>

<a href="books.html">Books I'd like to read</a>
