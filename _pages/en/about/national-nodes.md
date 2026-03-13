---
layout: page
title: "National Nodes"
description: "About page"
language: en
language_reference: about-national-nodes
permalink: /en/members/
published: true
menu_parent: members
menu_order: 10
menu_label: "National Nodes"
menu_icon: "none"
---

<h1>National Nodes</h1>

<p>LA Referencia is built as a federated network of national nodes. Each node coordinates repository interoperability and open science infrastructure in its country.</p>

{% assign member_nodes = site.members | where: "language", page.language | where: "published", true | sort: "menu_order" %}

<div class="members-grid">
  {% for member in member_nodes %}
    <article class="member-card">
      <a class="member-card-link" href="{{ member.url | relative_url }}">
        <div class="member-card-flag">
          {% if member.flag_image %}
            <img src="{{ member.flag_image | relative_url }}" alt="{{ member.title }}">
          {% else %}
            <span class="member-card-badge">{{ member.country_code }}</span>
          {% endif %}
        </div>
        <div class="member-card-body">
          <h2>{{ member.title }}</h2>
          <p class="member-card-node">{{ member.node_name }}</p>
          <p>{{ member.summary }}</p>
        </div>
      </a>
    </article>
  {% endfor %}
</div>
