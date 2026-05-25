---
layout: page
title: "Platform LA Referencia"
description: "Harvesting software and service platform of LA Referencia"
language: en
language_reference: services-platform
published: true
menu_parent: services
menu_order: 10
menu_label: "Platform LA Referencia"
menu_icon: "search"
---

<div class="contact-page">
  <header class="contact-page-header">
    <p class="contact-page-eyebrow">Technology</p>
    <h1 class="contact-page-title">Platform LA Referencia</h1>
    <p class="contact-page-lead">We develop open-source, free software (GPL 3) for harvesting, aggregating, and publishing scientific metadata.</p>
  </header>
</div>

<section class="content-section" style="margin-top: 3rem;">
  <div class="content-split" style="gap: 3rem; align-items: center;">
    <div>
      <h2 style="font-size: 2.2rem; line-height: 1.2; color: var(--secondary-color);">We develop technology for national harvesters</h2>
    </div>
    <div>
      <p class="content-lead" style="font-size: 1.15rem; color: var(--text-color); margin-bottom: 1rem;">LA Referencia, through its Technical Team, has developed a software platform for information harvesting that, besides supporting the central node of the regional network, works as an aggregator service and national portal for member countries.</p>
      <p style="color: var(--text-light);">This technological solution originated during the pilot phase of the IDB project in 2013. By mid-2014, with support from Science and Technology agencies, the need for a transferable solution with constant technological enhancements was identified.</p>
    </div>
  </div>
</section>

<section class="content-section" style="background: var(--neutral-soft-bg); padding: 4rem 2rem; border-radius: 24px; margin: 4rem 0;">
  <h2 style="text-align: center; margin-bottom: 3rem; font-size: 2rem;">Key Platform Components</h2>
  <div class="content-grid" style="grid-template-columns: repeat(3, minmax(0, 1fr)); gap: 1.5rem;">
    <article class="content-card" style="border: none; box-shadow: 0 10px 30px rgba(0,0,0,0.04); display: flex; flex-direction: column; justify-content: space-between; padding: 2rem;">
      <div>
        <div style="background: var(--primary-soft-bg); width: 50px; height: 50px; border-radius: 12px; display: flex; align-items: center; justify-content: center; margin-bottom: 1.5rem;">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="var(--primary-color)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line x1="12" y1="15" x2="12" y2="3"></line></svg>
        </div>
        <h3 style="font-size: 1.35rem; margin-bottom: 1rem; color: var(--secondary-color);">LRHarvester</h3>
        <p style="font-size: 0.9rem; color: var(--text-light); line-height: 1.6;">OAI-PMH metadata harvesting, transformation, and validation component. It harvests OAI sources, validates records, and transforms them to comply with the network’s quality guidelines.</p>
      </div>
      <div style="margin-top: 1.5rem; font-size: 0.8rem; font-weight: bold; color: var(--primary-color);">Java 1.7 / Spring / PostgreSQL</div>
    </article>

    <article class="content-card" style="border: none; box-shadow: 0 10px 30px rgba(0,0,0,0.04); display: flex; flex-direction: column; justify-content: space-between; padding: 2rem;">
      <div>
        <div style="background: var(--primary-soft-bg); width: 50px; height: 50px; border-radius: 12px; display: flex; align-items: center; justify-content: center; margin-bottom: 1.5rem;">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="var(--primary-color)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4 12v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-8"></path><polyline points="16 6 12 2 8 6"></polyline><line x1="12" y1="2" x2="12" y2="15"></line></svg>
        </div>
        <h3 style="font-size: 1.35rem; margin-bottom: 1rem; color: var(--secondary-color);">LRProvider</h3>
        <p style="font-size: 0.9rem; color: var(--text-light); line-height: 1.6;">Component responsible for publishing metadata through the OAI-PMH protocol. Offers high flexibility and scalability for interoperability with other international metadata aggregators.</p>
      </div>
      <div style="margin-top: 1.5rem; font-size: 0.8rem; font-weight: bold; color: var(--primary-color);">Adapted DSpace-XOAI</div>
    </article>

    <article class="content-card" style="border: none; box-shadow: 0 10px 30px rgba(0,0,0,0.04); display: flex; flex-direction: column; justify-content: space-between; padding: 2rem;">
      <div>
        <div style="background: var(--primary-soft-bg); width: 50px; height: 50px; border-radius: 12px; display: flex; align-items: center; justify-content: center; margin-bottom: 1.5rem;">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="var(--primary-color)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
        </div>
        <h3 style="font-size: 1.35rem; margin-bottom: 1rem; color: var(--secondary-color);">Search Engine / Portal</h3>
        <p style="font-size: 0.9rem; color: var(--text-light); line-height: 1.6;">Web portal for publishing aggregated metadata. It provides an intuitive, mobile-responsive search interface along with metadata quality and harvest progress statistics.</p>
      </div>
      <div style="margin-top: 1.5rem; font-size: 0.8rem; font-weight: bold; color: var(--primary-color);">VuFind Solr Integration</div>
    </article>
  </div>
</section>

<div class="content-split" style="gap: 4rem; margin: 4rem 0;">
  <div>
    <h2 style="color: var(--secondary-color); font-size: 1.8rem; margin-bottom: 1.5rem;">Design Principles</h2>
    <p style="color: var(--text-light); margin-bottom: 2rem;">LA Referencia's software architecture was designed under strict institutional and technical guidelines to ensure sustainability and efficiency:</p>
    <div style="display: grid; grid-template-columns: repeat(2, 1fr); gap: 1.5rem;">
      <div style="display: flex; gap: 0.75rem; align-items: flex-start;">
        <span style="color: var(--primary-color); font-weight: bold; font-size: 1.2rem;">✓</span>
        <div>
          <strong style="display: block; color: var(--secondary-color); font-size: 0.95rem;">Transferable</strong>
          <span style="font-size: 0.85rem; color: var(--text-light);">Same software version for central and national nodes.</span>
        </div>
      </div>
      <div style="display: flex; gap: 0.75rem; align-items: flex-start;">
        <span style="color: var(--primary-color); font-weight: bold; font-size: 1.2rem;">✓</span>
        <div>
          <strong style="display: block; color: var(--secondary-color); font-size: 0.95rem;">Scalable</strong>
          <span style="font-size: 0.85rem; color: var(--text-light);">Harvests millions of records in less than 24 hours.</span>
        </div>
      </div>
      <div style="display: flex; gap: 0.75rem; align-items: flex-start;">
        <span style="color: var(--primary-color); font-weight: bold; font-size: 1.2rem;">✓</span>
        <div>
          <strong style="display: block; color: var(--secondary-color); font-size: 0.95rem;">Open Source</strong>
          <span style="font-size: 0.85rem; color: var(--text-light);">Development and components based on open standards.</span>
        </div>
      </div>
      <div style="display: flex; gap: 0.75rem; align-items: flex-start;">
        <span style="color: var(--primary-color); font-weight: bold; font-size: 1.2rem;">✓</span>
        <div>
          <strong style="display: block; color: var(--secondary-color); font-size: 0.95rem;">Multilingual</strong>
          <span style="font-size: 0.85rem; color: var(--text-light);">Native Spanish, English, and Portuguese support.</span>
        </div>
      </div>
    </div>
  </div>

  <div class="content-note" style="margin-top: 0; padding: 2rem; display: flex; flex-direction: column; justify-content: space-between;">
    <div>
      <span class="contact-page-eyebrow" style="color: var(--primary-color); margin-bottom: 0.5rem; display: block;">Latest release</span>
      <h3 style="font-size: 1.6rem; color: var(--secondary-color); margin-bottom: 1.2rem;">What's New in Version 3.0</h3>
      <ul style="list-style: none; padding: 0; margin: 0; display: flex; flex-direction: column; gap: 0.85rem; font-size: 0.9rem; color: var(--text-color);">
        <li style="display: flex; gap: 0.5rem;"><span style="color: var(--primary-color);">•</span> Responsive and more user-friendly admin interface.</li>
        <li style="display: flex; gap: 0.5rem;"><span style="color: var(--primary-color);">•</span> Redesigned validation and transformation rules.</li>
        <li style="display: flex; gap: 0.5rem;"><span style="color: var(--primary-color);">•</span> Expanded domain objects and improved dictionaries.</li>
        <li style="display: flex; gap: 0.5rem;"><span style="color: var(--primary-color);">•</span> Redesigned relational schema for optimum performance.</li>
        <li style="display: flex; gap: 0.5rem;"><span style="color: var(--primary-color);">•</span> Enhanced storage of Solr engine diagnostic details.</li>
      </ul>
    </div>
    <div style="margin-top: 2rem;">
      <a class="lr-btn lr-btn-solid" href="https://github.com/lareferencia" style="width: 100%; text-align: center;">Go to GitHub Repository</a>
    </div>
  </div>
</div>

<section class="content-section" style="border-top: 1px solid var(--border-color); padding-top: 3rem; margin-top: 4rem;">
  <h2 style="text-align: center; margin-bottom: 1.5rem; font-size: 1.6rem;">Successful Implementations</h2>
  <p style="text-align: center; color: var(--text-light); max-width: 600px; margin: 0 auto 3rem;">Since 2015, LA Referencia's technology has been installed and validated by leading government agencies and academic consortia:</p>
  <div style="display: flex; flex-wrap: wrap; gap: 0.8rem; justify-content: center;">
    <span style="background: #fff; border: 1px solid var(--border-color); border-radius: 30px; padding: 0.5rem 1.2rem; font-size: 0.85rem; font-weight: 600; color: var(--secondary-color);">Argentina (MINCYT)</span>
    <span style="background: #fff; border: 1px solid var(--border-color); border-radius: 30px; padding: 0.5rem 1.2rem; font-size: 0.85rem; font-weight: 600; color: var(--secondary-color);">Brasil (IBICT)</span>
    <span style="background: #fff; border: 1px solid var(--border-color); border-radius: 30px; padding: 0.5rem 1.2rem; font-size: 0.85rem; font-weight: 600; color: var(--secondary-color);">Costa Rica (CONARE)</span>
    <span style="background: #fff; border: 1px solid var(--border-color); border-radius: 30px; padding: 0.5rem 1.2rem; font-size: 0.85rem; font-weight: 600; color: var(--secondary-color);">Chile (CONICYT)</span>
    <span style="background: #fff; border: 1px solid var(--border-color); border-radius: 30px; padding: 0.5rem 1.2rem; font-size: 0.85rem; font-weight: 600; color: var(--secondary-color);">Ecuador (CEDIA)</span>
    <span style="background: #fff; border: 1px solid var(--border-color); border-radius: 30px; padding: 0.5rem 1.2rem; font-size: 0.85rem; font-weight: 600; color: var(--secondary-color);">El Salvador (CBUES)</span>
    <span style="background: #fff; border: 1px solid var(--border-color); border-radius: 30px; padding: 0.5rem 1.2rem; font-size: 0.85rem; font-weight: 600; color: var(--secondary-color);">Peru (CONCYTEC)</span>
    <span style="background: #fff; border: 1px solid var(--border-color); border-radius: 30px; padding: 0.5rem 1.2rem; font-size: 0.85rem; font-weight: 600; color: var(--secondary-color);">Uruguay (ANII)</span>
    <span style="background: #fff; border: 1px solid var(--border-color); border-radius: 30px; padding: 0.5rem 1.2rem; font-size: 0.85rem; font-weight: 600; color: var(--secondary-color);">Portugal (RCAAP)</span>
    <span style="background: #fff; border: 1px solid var(--border-color); border-radius: 30px; padding: 0.5rem 1.2rem; font-size: 0.85rem; font-weight: 600; color: var(--secondary-color);">Panama (PRICILA)</span>
  </div>
</section>
