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
    <h1 class="contact-page-title">For questions, new ideas or collaboration requests, write to us</h1>
    <p class="contact-page-lead">To contact us, send us a message by email and share the context of your inquiry, initiative or collaboration request.</p>
  </header>

  <section class="contact-page-grid">
    <article class="contact-panel" id="contact-the-network">
      <p class="contact-panel-label">Institutional information</p>
      <h2>How to reach us</h2>
      <p>To contact us, send us a message by email.</p>
      <p>You may also write to the RedCLARA headquarters in Uruguay, located at Rambla Republica de Mexico 6125, Montevideo.</p>
      <address class="contact-address">
        Rambla Republica de Mexico 6125<br>
        Montevideo, Uruguay
      </address>
    </article>

    <article class="contact-panel">
      <p class="contact-panel-label">Primary channel</p>
      <h2>Contact email</h2>
      <a class="contact-mail-link" href="mailto:{{ site.email }}">{{ site.email }}</a>
      <p>This channel is intended for general inquiries, partnership discussions, institutional support and new ideas for LA Referencia.</p>
      <div class="contact-actions">
        <a class="lr-btn lr-btn-solid" href="mailto:{{ site.email }}">Send email</a>
      </div>
      <p class="contact-page-note">If you are writing on behalf of an institution, include the node, repository or project name in the subject line.</p>
    </article>

    <article class="contact-panel contact-panel-social">
      <p class="contact-panel-label">Official channels</p>
      <h2>Follow and contact us</h2>
      <p>You can also find us through our official social media channels.</p>
      <ul class="contact-social-grid">
        {% for item in nav.footer.social %}
          <li>
            <a class="contact-social-link" href="{{ item.href }}" target="_blank" rel="noopener">
              <span class="contact-social-mark" aria-hidden="true">{{ item.glyph | default: item.label | slice: 0, 2 }}</span>
              <span class="contact-social-copy">
                <strong>{{ item.label }}</strong>
                <span>Open official channel</span>
              </span>
            </a>
          </li>
        {% endfor %}
      </ul>
    </article>
  </section>
</div>
