---
layout: page
title: "Como participar"
description: "Página institucional"
language: pt
language_reference: about-how-to-join
published: true
menu_parent: members
menu_order: 20
menu_label: "Como participar"
menu_icon: "none"
---

<h1>Como participar</h1>

<h2>Como faço para que meu resultado de pesquisa ou repositório apareça na LA Referencia?</h2>

<p>A LA Referencia é um agregador, não um repositório; por esse motivo, não é possível depositar diretamente seus resultados de pesquisa. Somos uma rede federada, então cada um de nossos nós nacionais decide quais repositórios institucionais serão coletados e, por sua vez, cada repositório define os mecanismos para realizar o depósito.</p>

<h2>Obtenha informações aqui:</h2>

<p>Em que país você se encontra?</p>

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
  <h2>Seu país não faz parte da LA Referencia?</h2>
  <p>Os países que fazem parte da LA Referencia assinaram acordos técnicos e organizacionais por meio de seus órgãos públicos de ciência e tecnologia (Ministérios e Oncyts), juntamente com a RedCLARA; por isso, convidamos você a entrar em contato com esses órgãos e incentivá-los a aderir, demonstrando a importância da iniciativa.</p>
  <p><a href="mailto:federico.cetrangolo@lareferencia.redclara.net">federico.cetrangolo@lareferencia.redclara.net</a></p>
</div>
