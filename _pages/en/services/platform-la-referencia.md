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

<h1>Platform LA Referencia</h1>

<div class="content-split">
  <div>
    <h2>We develop technology for national harvesters</h2>
  </div>
  <div>
    <p>LA Referencia, through its Technical Team, has developed a free and open-source software platform (GPL 3) for information harvesting that not only supports the central node of the regional network but also serves as an aggregator service and national portal for member countries. This technological solution originated during the pilot phase of the IDB project from March to September 2013. By mid-2014, with support from Science and Technology agencies, the need for a transferable solution with a set of technological enhancements was identified.</p>
  </div>
</div>

<section class="content-section">
  <h2>Implementations</h2>
  <p>Since 2015, LA Referencia’s technology has been installed in:</p>
  <ul class="content-list">
    <li>Argentina (MINCYT)</li>
    <li>Brasil (IBICT)</li>
    <li>Colombia (Renata, Colciencia, Ministerio de Educación)</li>
    <li>Costa Rica (CONARE)</li>
    <li>Chile (CONICYT, LR Harvester and LR Provider)</li>
    <li>Ecuador (CEDIA, SENECYT)</li>
    <li>El Salvador (CBUES, Vice Ministry of Science and Technology)</li>
    <li>Peru (CONCYTEC)</li>
    <li>Uruguay (ANII)</li>
    <li>Portugal (RCAAP)</li>
    <li>Panama (PRICILA)</li>
  </ul>
</section>

<section class="content-section">
  <h2>Components</h2>
  <div class="content-grid">
    <article class="content-card">
      <h3>LRHarvester</h3>
      <p>Harvesting, transformation and validation component for OAI-PMH metadata. It is responsible for harvesting OAI sources, validating metadata records and transforming them to comply with the network’s quality guidelines. The harvesting component was initially based on OCLCHarvester2. The platform is developed in Java 1.7, using the Spring framework and the PostgreSQL 9.X database engine. It is also compatible with MySQL.</p>
    </article>
    <article class="content-card">
      <h3>LRProvider</h3>
      <p>This component is responsible for publishing metadata through the OAI-PMH protocol. It is currently based on the DSpace-XOAI software, which provides high flexibility and scalability for interoperability with other international metadata aggregators.</p>
    </article>
    <article class="content-card">
      <h3>Search Engine / Service Portal</h3>
      <p>This component provides a user-friendly, mobile-responsive search interface for accessing the aggregated metadata. In addition, it offers statistics on metadata quality and the progress of harvesting processes. The portal is based on the open-source software VuFind, with custom modules developed specifically for the platform.</p>
    </article>
  </div>
</section>

<section class="content-section">
  <h2>Version 3.0</h2>
  <ul class="content-list">
    <li>A more user-friendly and responsive admin interface.</li>
    <li>Redesigned validation and transformation mechanism, enabling the implementation of rules that support more complex guidelines.</li>
    <li>Expanded domain objects to represent and store validators, transformers, controlled vocabularies and transformation dictionaries.</li>
    <li>Redesigned relational structure for improved performance.</li>
    <li>Enhanced storage of diagnostic details related to the Solr engine.</li>
    <li>Redesigned diagnostics and reporting interface.</li>
    <li>Multi-rule and multi-field validation, along with improved support for harvesting from OJS.</li>
  </ul>
</section>

<section class="content-section">
  <h2>Design principles</h2>
  <ul class="content-list">
    <li>Transferable: the central node version must be the same as the national nodes.</li>
    <li>Responsive: mobile device access supported.</li>
    <li>Multilingual: support at least in English and Portuguese.</li>
    <li>Business-oriented: focused on validation and transformation of metadata in OAI.</li>
    <li>Support for OpenAIRE guidelines and flexibility to update with new guidelines.</li>
    <li>Scalable: must harvest hundreds of repositories and over one million records in less than 24 hours.</li>
    <li>Manageable and user-friendly: diagnostic, validation and reporting tools for administrators.</li>
    <li>Open source: development and use of components and solutions built on open technologies.</li>
    <li>Statistics: development of new modules.</li>
    <li>Cost-effective: based on free Linux distributions such as Ubuntu.</li>
  </ul>
</section>

<p><a class="lr-btn lr-btn-solid" href="https://github.com/lareferencia">Go to GitHub</a></p>
