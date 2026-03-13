---
layout: page
title: "Noticias"
description: "Últimas novedades"
language: es
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
      {% assign item_image = item.image %}
      <li class="post-item{% unless item_image %} post-item--text-only{% endunless %}">
        {% if item_image %}
          <a class="post-item-media" href="{{ item.url | relative_url }}">
            <img src="{{ item_image | relative_url }}" alt="{{ item.title | escape }}" loading="lazy">
          </a>
        {% endif %}
        <div class="post-item-body">
          <a class="post-item-title" href="{{ item.url | relative_url }}">{{ item.title }}</a>
          <p class="post-meta">{{ item.date | date: "%d %b %Y" }}</p>
          <p class="post-item-excerpt">{{ item.summary | default: item.excerpt | strip_html | strip_newlines | truncate: 180 }}</p>
        </div>
      </li>
    {% endfor %}
  </ul>
{% else %}
  <p>No hay noticias publicadas en este idioma por ahora.</p>
{% endif %}
