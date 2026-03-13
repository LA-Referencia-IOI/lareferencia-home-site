---
layout: page
title: "Contacto"
description: "Ponte en contacto"
language: es
language_reference: contact
published: true
order: 3
---

{% assign nav = site.data.navigation[page.language] %}

<div class="contact-page">
  <header class="contact-page-header">
    <p class="contact-page-eyebrow">Contacto</p>
    <h1 class="contact-page-title">Para dudas, consultas o nuevas ideas, escríbanos</h1>
    <p class="contact-page-lead">Centralizamos aquí consultas institucionales, colaboraciones y seguimiento de iniciativas de ciencia abierta en la red.</p>
  </header>

  <section class="contact-page-grid">
    <article class="contact-panel" id="contacto-con-la-red">
      <p class="contact-panel-label">Información institucional</p>
      <h2>Cómo contactarnos</h2>
      <p>Para contactarnos, escríbanos por correo y comparta el contexto de su consulta, alianza o iniciativa.</p>
      <p>También puede escribirnos a la sede central de RedCLARA en Uruguay, ubicada en Rambla República de México 6125, Montevideo.</p>
      <address class="contact-address">
        Rambla República de México 6125<br>
        Montevideo, Uruguay
      </address>
    </article>

    <article class="contact-panel">
      <p class="contact-panel-label">Canal principal</p>
      <h2>Correo de contacto</h2>
      <a class="contact-mail-link" href="mailto:{{ site.email }}">{{ site.email }}</a>
      <p>Este canal concentra consultas generales, acuerdos de colaboración, soporte institucional y nuevas ideas para LA Referencia.</p>
      <div class="contact-actions">
        <a class="lr-btn lr-btn-solid" href="mailto:{{ site.email }}">Enviar correo</a>
      </div>
      <p class="contact-page-note">Si escribe en nombre de una institución, incluya el nombre del nodo, repositorio o proyecto en el asunto del mensaje.</p>
    </article>

    <article class="contact-panel contact-panel-social">
      <p class="contact-panel-label">Redes oficiales</p>
      <h2>Síganos y escríbanos</h2>
      <p>También puede encontrarnos en nuestras redes sociales oficiales.</p>
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
