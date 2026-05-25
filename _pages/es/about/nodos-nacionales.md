---
layout: page
title: "Países Miembros"
description: "Página institucional"
language: es
language_reference: about-national-nodes
permalink: /es/miembros/
published: true
menu_parent: members
menu_order: 10
menu_label: "Países Miembros"
menu_icon: "none"
---

<div class="contact-page">
  <header class="contact-page-header">
    <p class="contact-page-eyebrow">Países Miembros</p>
    <h1 class="contact-page-title">Países Miembros</h1>
    <p class="contact-page-lead">LA Referencia está conformada actualmente por ocho países latinoamericanos (Argentina, Brasil, Chile, Costa Rica, Ecuador, Panamá, Perú y Uruguay) y uno europeo (España). Estos países cuentan con nodos nacionales que agrupan a su vez diversos repositorios locales, principalmente de universidades.</p>
  </header>
</div>

<section class="content-section">
  <p>Siguiendo los estándares técnicos de LA Referencia, las redes de cada país son el puente efectivo para integrar contenidos en el Buscador de documentos científicos. En varios países los nodos son operados por el organismo de ciencia y tecnología y en otros se delega en un consorcio de universidades o red académica.</p>
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
          <p class="member-card-node">{{ member.node_name }}</p>
          <p>{{ member.summary }}</p>
        </div>
      </a>
    </article>
  {% endfor %}
</div>

<div class="content-note" style="margin-top: 2.5rem;">
  <h2>¿Su país no es parte de LA Referencia?</h2>
  <p>Los países que son parte de LA Referencia han firmado acuerdos técnicos y organizativos a través de sus organismos públicos de ciencia y tecnología (Ministerios y Oncyts), conjuntamente con RedCLARA; por lo que le invitamos a realizar las diligencias con estos organismos e instarles a unirse demostrando su importancia. Póngase en contacto con nosotros para poder apoyarle en este proceso.</p>
</div>
