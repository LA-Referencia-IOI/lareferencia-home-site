---
layout: page
title: "Países membros"
description: "Diretório de países membros e nós nacionais da LA Referencia"
language: pt
language_reference: about-national-nodes
permalink: /pt/membros/
published: true
menu_parent: members
menu_order: 10
menu_label: "Países membros"
menu_icon: "none"
---

<div class="members-directory">
<div class="contact-page">
  <header class="contact-page-header">
    <p class="contact-page-eyebrow">Países membros</p>
    <h1 class="contact-page-title">Países membros</h1>
    <p class="contact-page-lead">Os países membros participam da governança e sustentam a LA Referencia por meio da assinatura do Acordo de Cooperação. Seus nós nacionais conectam repositórios e dão visibilidade à produção científica da América Latina e da Espanha.</p>
  </header>
</div>

<section class="content-section">
  <p>A participação dos países membros é formalizada pela assinatura do Acordo de Cooperação. Por meio de suas instituições representantes, contribuem para a governança e a sustentabilidade da rede e articulam as ações nacionais com os objetivos compartilhados da LA Referencia.</p>
  <p>Os nós nacionais integram repositórios de universidades e instituições de pesquisa por meio de padrões compartilhados. Consulte o perfil de cada país para conhecer seu nó, suas políticas e seus links de interesse.</p>
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
          <span class="member-directory-action">Ver perfil do país <span aria-hidden="true">→</span></span>
        </div>
      </a>
    </article>
  {% endfor %}
</div>

<section class="content-note" aria-labelledby="members-join-title">
  <h2 id="members-join-title">Como fazer parte da rede</h2>
  <p>Para ingressar como país membro, a adesão é coordenada pelas instituições nacionais de ciência e tecnologia, em conjunto com a RedCLARA, e formalizada pela assinatura do Acordo de Cooperação. Entre em contato para conhecer o processo e receber orientação.</p>
  <div class="content-actions">
    <a class="lr-btn lr-btn-solid" href="{{ '/pt/contact' | relative_url }}">Entrar em contato com a LA Referencia</a>
    <a class="lr-btn lr-btn-outline" href="{{ '/pt/about/como-participar' | relative_url }}">Como incluir um repositório</a>
  </div>
</section>
</div>
