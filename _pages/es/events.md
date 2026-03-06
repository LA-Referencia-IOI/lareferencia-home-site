---
layout: page
title: "Eventos"
description: "Próximos y recientes eventos"
language: es
language_reference: events-index
published: true
order: 5
---

<h1>Eventos</h1>

{% assign events_items = site.events | where: "language", page.language | where: "published", true | sort: "event_start" %}

<div class="event-list">
  {% for event in events_items %}
    <article class="event-list-item">
      <h3><a href="{{ event.url | relative_url }}">{{ event.title }}</a></h3>
      <p class="event-meta">{{ event.event_start | date: "%d %b %Y" }}{% if event.event_end %} - {{ event.event_end | date: "%d %b %Y" }}{% endif %}</p>
      <p>{{ event.summary | default: event.excerpt | strip_html | strip_newlines | truncate: 180 }}</p>
    </article>
  {% endfor %}
</div>
