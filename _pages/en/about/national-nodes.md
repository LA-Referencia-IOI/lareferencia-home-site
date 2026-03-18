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

<p>LA Referencia currently brings together ten Latin American countries (Argentina, Brazil, Chile, Colombia, Costa Rica, Ecuador, Panama, Peru and Uruguay) and one European country (Spain). These countries have national nodes that in turn group a range of local repositories, mainly from universities.</p>

<p>Following LA Referencia technical standards, each country's network acts as the effective bridge to integrate contents into the scientific documents Search Engine. In several countries the nodes are operated by the national science and technology agency, while in others the operation is delegated to a university consortium or academic network.</p>

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

<h2>Is your country not part of LA Referencia?</h2>

<p>The countries that are part of LA Referencia have signed technical and organizational agreements through their public science and technology institutions, together with RedCLARA. If your country is not yet part of the network, we invite you to work with those institutions and encourage them to join by demonstrating the value of participation. Contact us and we can support you through that process.</p>
