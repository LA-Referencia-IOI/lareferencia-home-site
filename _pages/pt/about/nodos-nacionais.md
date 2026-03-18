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

<p>A LA Referencia é atualmente formada por dez países latino-americanos (Argentina, Brasil, Chile, Colômbia, Costa Rica, Equador, Panamá, Peru e Uruguai) e um país europeu (Espanha). Esses países contam com nós nacionais que, por sua vez, reúnem diversos repositórios locais, principalmente universitários.</p>

<p>Seguindo os padrões técnicos da LA Referencia, as redes de cada país funcionam como a ponte efetiva para integrar conteúdos ao Buscador de documentos científicos. Em vários países os nós são operados pelo organismo nacional de ciência e tecnologia, e em outros essa operação é delegada a um consórcio de universidades ou a uma rede acadêmica.</p>

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

<h2>Seu país não faz parte da LA Referencia?</h2>

<p>Os países que fazem parte da LA Referencia assinaram acordos técnicos e organizacionais por meio de seus organismos públicos de ciência e tecnologia, juntamente com a RedCLARA. Se o seu país ainda não faz parte da rede, convidamos você a realizar as articulações com essas instituições e incentivá-las a aderir, demonstrando a importância dessa participação. Entre em contato conosco para que possamos apoiá-lo nesse processo.</p>
