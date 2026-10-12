---
layout: page
title: "Contact"
description: "Get in touch"
language: en
language_reference: contact
published: true
order: 3
---

{% assign nav = site.data.navigation[page.language] %}

<div class="contact-page">
  <header class="contact-page-header">
    <p class="contact-page-eyebrow">Contact</p>
    <h1 class="contact-page-title">Contact LA Referencia</h1>
    <p class="contact-page-lead">Get in touch to ask about the network, its services or opportunities to participate and collaborate.</p>
  </header>

  <section class="contact-page-grid">
    <article class="contact-panel" id="contact-the-network">
      <p class="contact-panel-label">Institutional information</p>
      <h2>Postal address</h2>
      <p>Postal correspondence can be sent to RedCLARA’s headquarters in Uruguay.</p>
      <address class="contact-address">
        Rambla República de México 6125<br>
        Montevideo, Uruguay
      </address>
    </article>

    <article class="contact-panel">
      <p class="contact-panel-label">Primary channel</p>
      <h2>Contact email</h2>
      <a class="contact-mail-link" href="mailto:{{ site.email }}">{{ site.email }}</a>
      <p>Use this email address for general inquiries, institutional requests and collaboration proposals.</p>
      <div class="contact-actions">
        <a class="lr-btn lr-btn-solid" href="mailto:{{ site.email }}">Send email</a>
      </div>
      <p class="contact-page-note">Briefly explain the reason for your inquiry. If you are writing on behalf of an institution, include its name and the relevant node, repository or project.</p>
    </article>

    <article class="contact-panel contact-panel-social">
      <p class="contact-panel-label">Official channels</p>
      <h2>Follow us on social media</h2>
      <p>Follow our official accounts for LA Referencia news, activities and updates.</p>
      <ul class="contact-social-grid">
        {% for item in nav.footer.social %}
          <li>
            <a class="contact-social-link" href="{{ item.href }}" target="_blank" rel="noopener">
              <span class="contact-social-mark" aria-hidden="true">{{ item.glyph | default: item.label | slice: 0, 2 }}</span>
              <span class="contact-social-copy">
                <strong>{{ item.label }}</strong>
                <span>View official profile</span>
              </span>
            </a>
          </li>
        {% endfor %}
      </ul>
    </article>
  </section>
</div>
