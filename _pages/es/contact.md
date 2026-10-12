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
    <h1 class="contact-page-title">Contacte con LA Referencia</h1>
    <p class="contact-page-lead">Escríbanos para consultar sobre la red, sus servicios o las posibilidades de participación y colaboración.</p>
  </header>

  <section class="contact-page-grid">
    <article class="contact-panel" id="contacto-con-la-red">
      <p class="contact-panel-label">Información institucional</p>
      <h2>Dirección postal</h2>
      <p>La correspondencia postal puede dirigirse a la sede de RedCLARA en Uruguay.</p>
      <address class="contact-address">
        Rambla República de México 6125<br>
        Montevideo, Uruguay
      </address>
    </article>

    <article class="contact-panel">
      <p class="contact-panel-label">Canal principal</p>
      <h2>Correo de contacto</h2>
      <a class="contact-mail-link" href="mailto:{{ site.email }}">{{ site.email }}</a>
      <p>Utilice este correo para consultas generales, solicitudes institucionales y propuestas de colaboración.</p>
      <div class="contact-actions">
        <a class="lr-btn lr-btn-solid" href="mailto:{{ site.email }}">Enviar correo</a>
      </div>
      <p class="contact-page-note">Indique brevemente el motivo de su consulta. Si escribe en nombre de una institución, incluya su nombre y el del nodo, repositorio o proyecto correspondiente.</p>
    </article>

    <article class="contact-panel contact-panel-social">
      <p class="contact-panel-label">Redes oficiales</p>
      <h2>Síganos en redes sociales</h2>
      <p>Siga nuestras redes oficiales para conocer noticias, actividades y novedades de LA Referencia.</p>
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
