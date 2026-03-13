---
layout: page
title: "Nós Nacionais"
description: "Página institucional"
language: pt
language_reference: about-national-nodes
permalink: /pt/membros/
published: true
menu_parent: members
menu_order: 10
menu_label: "Nós Nacionais"
menu_icon: "none"
---

<h1>Nós Nacionais</h1>

<p>A LA Referencia opera como uma rede federada baseada em nós nacionais. Cada nó coordena a interoperabilidade de repositórios e a infraestrutura de ciência aberta em seu país.</p>

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
