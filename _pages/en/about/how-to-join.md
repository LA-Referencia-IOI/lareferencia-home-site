---
layout: page
title: "How to Join"
description: "About page"
language: en
language_reference: about-how-to-join
published: true
menu_parent: members
menu_order: 20
menu_label: "How to Join"
menu_icon: "none"
---

<div class="contact-page">
  <header class="contact-page-header">
    <p class="contact-page-eyebrow">How to Join</p>
    <h1 class="contact-page-title">What steps should I take if my research or institutional repository is not available in LA Referencia?</h1>
    <p class="contact-page-lead">LA Referencia is an aggregator, not a repository, which is why it is not possible to deposit your research outputs directly.</p>
  </header>
</div>

<section class="content-section">
  <p>We are a federated network, so each of our national nodes decides which institutional repositories to harvest, and in turn, each repository defines its own mechanisms for depositing content.</p>
</section>

<section class="content-section">
  <h2>Get information here:</h2>
  <p class="content-lead">In which country are you located?</p>
</section>

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
          {% if member.node_name %}
            <p class="member-card-node">{{ member.node_name }}</p>
          {% endif %}
          {% if member.summary %}
            <p>{{ member.summary }}</p>
          {% endif %}
        </div>
      </a>
    </article>
  {% endfor %}
</div>

<div class="content-note" style="margin-top: 2.5rem;">
  <h2>Is your country not part of LA Referencia?</h2>
  <p>The countries that are part of LA Referencia have signed technical and organizational agreements through their public science and technology bodies (Ministries and Oncyts), together with RedCLARA. Therefore, we invite you to contact these bodies and encourage them to join, demonstrating the importance of the initiative.</p>
  <p style="margin-top: 1rem;"><a class="lr-btn lr-btn-solid" href="mailto:federico.cetrangolo@lareferencia.redclara.net">federico.cetrangolo@lareferencia.redclara.net</a></p>
</div>
