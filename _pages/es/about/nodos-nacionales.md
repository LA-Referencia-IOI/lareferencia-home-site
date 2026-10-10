---
layout: page
title: "Países miembro"
description: "Directorio de países miembros y nodos nacionales de LA Referencia"
language: es
language_reference: about-national-nodes
permalink: /es/miembros/
published: true
menu_parent: members
menu_order: 10
menu_label: "Países miembro"
menu_icon: "none"
---

<div class="members-directory">
<div class="contact-page">
  <header class="contact-page-header">
    <p class="contact-page-eyebrow">Países miembro</p>
    <h1 class="contact-page-title">Países miembro</h1>
    <p class="contact-page-lead">Los países miembros conforman la gobernanza y sostienen LA Referencia mediante la suscripción del Acuerdo de Cooperación. Sus nodos nacionales conectan repositorios y dan visibilidad a la producción científica de América Latina y España.</p>
  </header>
</div>

<section class="content-section">
  <p>La participación de los países miembros se formaliza mediante la suscripción del Acuerdo de Cooperación. A través de sus instituciones representantes, contribuyen a la gobernanza de la red y a su sostenibilidad, y articulan las acciones nacionales con los objetivos compartidos de LA Referencia.</p>
  <p>Los nodos nacionales integran repositorios de universidades e instituciones de investigación mediante estándares compartidos. Consulte la ficha de cada país para conocer su nodo, sus políticas y sus enlaces de interés.</p>
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
          <span class="member-directory-action">Ver ficha del país <span aria-hidden="true">→</span></span>
        </div>
      </a>
    </article>
  {% endfor %}
</div>

<section class="content-note" aria-labelledby="members-join-title">
  <h2 id="members-join-title">Cómo sumarse a la red</h2>
  <p>Para sumarse como país miembro, la incorporación se coordina a través de las instituciones nacionales de ciencia y tecnología, junto con RedCLARA, y se formaliza mediante la suscripción del Acuerdo de Cooperación. Escríbanos para conocer el proceso y recibir orientación.</p>
  <div class="content-actions">
    <a class="lr-btn lr-btn-solid" href="{{ '/es/contact' | relative_url }}">Contactar con LA Referencia</a>
    <a class="lr-btn lr-btn-outline" href="{{ '/es/about/como-ser-parte' | relative_url }}">Cómo incorporar un repositorio</a>
  </div>
</section>
</div>
