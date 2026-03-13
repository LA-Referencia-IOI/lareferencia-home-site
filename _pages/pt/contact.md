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
    <h1 class="contact-page-title">Para dúvidas, novas ideias ou pedidos de colaboração, escreva para nós</h1>
    <p class="contact-page-lead">Para entrar em contato, envie-nos uma mensagem por e-mail e compartilhe o contexto da sua consulta, iniciativa ou pedido de colaboração.</p>
  </header>

  <section class="contact-page-grid">
    <article class="contact-panel" id="contato-com-a-rede">
      <p class="contact-panel-label">Informação institucional</p>
      <h2>Como entrar em contato</h2>
      <p>Para entrar em contato, envie-nos uma mensagem por e-mail.</p>
      <p>Você também pode escrever para a sede central da RedCLARA no Uruguai, localizada na Rambla República de México 6125, em Montevidéu.</p>
      <address class="contact-address">
        Rambla República de México 6125<br>
        Montevidéu, Uruguai
      </address>
    </article>

    <article class="contact-panel">
      <p class="contact-panel-label">Canal principal</p>
      <h2>E-mail de contato</h2>
      <a class="contact-mail-link" href="mailto:{{ site.email }}">{{ site.email }}</a>
      <p>Este canal concentra consultas gerais, acordos de parceria, suporte institucional e novas ideias para a LA Referencia.</p>
      <div class="contact-actions">
        <a class="lr-btn lr-btn-solid" href="mailto:{{ site.email }}">Enviar email</a>
      </div>
      <p class="contact-page-note">Se você escreve em nome de uma instituição, inclua o nome do nó, repositório ou projeto no assunto da mensagem.</p>
    </article>

    <article class="contact-panel contact-panel-social">
      <p class="contact-panel-label">Canais oficiais</p>
      <h2>Siga e escreva para nós</h2>
      <p>Você também pode nos encontrar em nossos canais oficiais de redes sociais.</p>
      <ul class="contact-social-grid">
        {% for item in nav.footer.social %}
          <li>
            <a class="contact-social-link" href="{{ item.href }}" target="_blank" rel="noopener">
              <span class="contact-social-mark" aria-hidden="true">{{ item.glyph | default: item.label | slice: 0, 2 }}</span>
              <span class="contact-social-copy">
                <strong>{{ item.label }}</strong>
                <span>Abrir canal oficial</span>
              </span>
            </a>
          </li>
        {% endfor %}
      </ul>
    </article>
  </section>
</div>
