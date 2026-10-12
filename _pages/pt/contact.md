---
layout: page
title: "Contato"
description: "Entre em contato"
language: pt
language_reference: contact
published: true
order: 3
---

{% assign nav = site.data.navigation[page.language] %}

<div class="contact-page">
  <header class="contact-page-header">
    <p class="contact-page-eyebrow">Contato</p>
    <h1 class="contact-page-title">Entre em contato com a LA Referencia</h1>
    <p class="contact-page-lead">Escreva para nós para saber mais sobre a rede, seus serviços ou as oportunidades de participação e colaboração.</p>
  </header>

  <section class="contact-page-grid">
    <article class="contact-panel" id="contato-com-a-rede">
      <p class="contact-panel-label">Informação institucional</p>
      <h2>Endereço postal</h2>
      <p>A correspondência postal pode ser enviada à sede da RedCLARA no Uruguai.</p>
      <address class="contact-address">
        Rambla República de México 6125<br>
        Montevidéu, Uruguai
      </address>
    </article>

    <article class="contact-panel">
      <p class="contact-panel-label">Canal principal</p>
      <h2>E-mail de contato</h2>
      <a class="contact-mail-link" href="mailto:{{ site.email }}">{{ site.email }}</a>
      <p>Utilize este e-mail para dúvidas gerais, solicitações institucionais e propostas de colaboração.</p>
      <div class="contact-actions">
        <a class="lr-btn lr-btn-solid" href="mailto:{{ site.email }}">Enviar e-mail</a>
      </div>
      <p class="contact-page-note">Explique brevemente o motivo do contato. Se você escreve em nome de uma instituição, informe seu nome e o do nó, repositório ou projeto correspondente.</p>
    </article>

    <article class="contact-panel contact-panel-social">
      <p class="contact-panel-label">Canais oficiais</p>
      <h2>Siga nossas redes sociais</h2>
      <p>Siga nossos perfis oficiais para acompanhar notícias, atividades e novidades da LA Referencia.</p>
      <ul class="contact-social-grid">
        {% for item in nav.footer.social %}
          <li>
            <a class="contact-social-link" href="{{ item.href }}" target="_blank" rel="noopener">
              <span class="contact-social-mark" aria-hidden="true">{{ item.glyph | default: item.label | slice: 0, 2 }}</span>
              <span class="contact-social-copy">
                <strong>{{ item.label }}</strong>
                <span>Ver perfil oficial</span>
              </span>
            </a>
          </li>
        {% endfor %}
      </ul>
    </article>
  </section>
</div>
