---
layout: page
title: "Cómo ser parte"
description: "Página institucional"
language: es
language_reference: about-how-to-join
published: true
menu_parent: members
menu_order: 20
menu_label: "Cómo ser parte"
menu_icon: "none"
---

<h1>Cómo ser parte</h1>

<h2>¿Cómo hago para que mi resultado de investigación o repositorio aparezca en LA Referencia?</h2>

<p>LA Referencia es un agregador, no un repositorio, por ese motivo no es posible depositar directamente sus resultados de investigación. Somos una red federada, entonces, cada uno de nuestros nodos nacionales decide qué repositorios institucionales cosechar, y a su vez, cada repositorio define sus propios mecanismos para realizar el depósito.</p>

<h2>Obtenga información acá:</h2>

<p>¿En qué país se encuentra usted?</p>

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

<div class="contact-card">
  <h2>¿Su país no forma parte de LA Referencia?</h2>
  <p>Los países que forman parte de LA Referencia han suscrito acuerdos técnicos y organizativos por medio de sus organismos públicos de ciencia y tecnología, conjuntamente con RedCLARA. Por eso, lo invitamos a ponerse en contacto con dichos organismos y a promover su incorporación, demostrando la importancia de la iniciativa.</p>
  <p>Póngase en contacto con nosotros para que podamos apoyarle en este proceso.</p>
  <p><a href="mailto:federico.cetrangolo@lareferencia.redclara.net">federico.cetrangolo@lareferencia.redclara.net</a></p>
</div>
