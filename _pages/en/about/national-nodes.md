---
layout: page
title: "Member countries"
description: "Directory of LA Referencia member countries and national nodes"
language: en
language_reference: about-national-nodes
permalink: /en/members/
published: true
menu_parent: members
menu_order: 10
menu_label: "Member countries"
menu_icon: "none"
---

<div class="members-directory">
<div class="contact-page">
  <header class="contact-page-header">
    <p class="contact-page-eyebrow">Member countries</p>
    <h1 class="contact-page-title">Member countries</h1>
    <p class="contact-page-lead">Member countries participate in LA Referencia’s governance and support its sustainability by signing the Cooperation Agreement. Their national nodes connect repositories and increase the visibility of scientific output from Latin America and Spain.</p>
  </header>
</div>

<section class="content-section">
  <p>Membership is formalized by signing the Cooperation Agreement. Through their representative institutions, member countries contribute to the network’s governance and sustainability, aligning national activities with LA Referencia’s shared objectives.</p>
  <p>National nodes integrate repositories from universities and research institutions through shared standards. Visit each country’s profile to learn about its node, policies and useful links.</p>
</section>

{% assign member_nodes = site.members | where: "language", page.language | where: "published", true | sort: "menu_order" %}

<div class="members-grid">
  {% for member in member_nodes %}
    <article class="member-card">
      <a class="member-card-link" href="{{ member.url | relative_url }}">
        <div class="member-card-flag">
          {% if member.flag_image %}
            <img src="{{ member.flag_image | relative_url }}" alt="" loading="lazy">
          {% else %}
            <span class="member-card-badge">{{ member.country_code }}</span>
          {% endif %}
        </div>
        <div class="member-card-body">
          <h2>{{ member.title }}</h2>
          <p class="member-card-node">{{ member.directory_node | default: member.node_name | escape }}</p>
          <p class="member-directory-label">{{ member.directory_node_label | escape }}</p>
          <p class="member-directory-summary">{{ member.directory_summary | default: member.summary | escape }}</p>
          <span class="member-directory-action">View country profile <span aria-hidden="true">→</span></span>
        </div>
      </a>
    </article>
  {% endfor %}
</div>

<section class="content-note" aria-labelledby="members-join-title">
  <h2 id="members-join-title">How to join the network</h2>
  <p>Joining as a member country is coordinated through national science and technology institutions, together with RedCLARA, and formalized by signing the Cooperation Agreement. Contact us to learn about the process and receive guidance.</p>
  <div class="content-actions">
    <a class="lr-btn lr-btn-solid" href="{{ '/en/contact' | relative_url }}">Contact LA Referencia</a>
    <a class="lr-btn lr-btn-outline" href="{{ '/en/about/how-to-join' | relative_url }}">How to include a repository</a>
  </div>
</section>
</div>
