---
layout: page
title: "Noticias"
description: "Ultimas novidades"
language: pt
language_reference: news-index
published: true
menu_parent: resources
menu_order: 40
menu_label: "Noticias"
menu_icon: "docs"
---

<h1>Noticias</h1>

{% assign news_items = site.news | where: "language", page.language | where: "published", true | sort: "date" | reverse %}

{% if news_items.size > 0 %}
  <ul class="post-item-list">
    {% for item in news_items %}
      <li class="post-item">
        <a class="post-item-title" href="{{ item.url | relative_url }}">{{ item.title }}</a>
        <p class="post-meta">{{ item.date | date: "%d %b %Y" }}</p>
        <p class="post-item-excerpt">{{ item.summary | default: item.excerpt | strip_html | strip_newlines | truncate: 180 }}</p>
      </li>
    {% endfor %}
  </ul>
{% else %}
  <p>Ainda não há notícias publicadas neste idioma.</p>
{% endif %}
