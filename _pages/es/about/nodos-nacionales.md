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

<h1>Nodos Nacionales</h1>

<p>LA Referencia está conformada actualmente por diez países latinoamericanos (Argentina, Brasil, Chile, Colombia, Costa Rica, Ecuador, Panamá, Perú y Uruguay) y uno europeo (España). Estos países cuentan con nodos nacionales que agrupan a su vez diversos repositorios locales, principalmente de universidades.</p>

<p>Siguiendo los estándares técnicos de LA Referencia, las redes de cada país son el puente efectivo para integrar contenidos en el Buscador de documentos científicos. En varios países los nodos son operados por el organismo de ciencia y tecnología y en otros se delega en un consorcio de universidades o red académica.</p>

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

<h2>¿Su país no es parte de LA Referencia?</h2>

<p>Los países que son parte de LA Referencia han firmado acuerdos técnicos y organizativos a través de sus organismos públicos de ciencia y tecnología (Ministerios y Oncyts), conjuntamente con RedCLARA; por lo que le invitamos a realizar las diligencias con estos organismos e instarles a unirse demostrando su importancia. Póngase en contacto con nosotros para poder apoyarle en este proceso.</p>
