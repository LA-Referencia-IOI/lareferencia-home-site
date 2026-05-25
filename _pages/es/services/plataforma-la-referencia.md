---
layout: page
title: "Plataforma LA Referencia"
description: "Software de cosecha y servicios de LA Referencia"
language: es
language_reference: services-platform
published: true
menu_parent: services
menu_order: 10
menu_label: "Plataforma LA Referencia"
menu_icon: "search"
---

<div class="contact-page">
  <header class="contact-page-header">
    <p class="contact-page-eyebrow">Tecnología</p>
    <h1 class="contact-page-title">Plataforma LA Referencia</h1>
    <p class="contact-page-lead">Desarrollamos software libre (GPL 3) y de código abierto para la cosecha, agregación y publicación de metadatos científicos.</p>
  </header>
</div>

<section class="content-section" style="margin-top: 3rem;">
  <div class="content-split" style="gap: 3rem; align-items: center;">
    <div>
      <h2 style="font-size: 2.2rem; line-height: 1.2; color: var(--secondary-color);">Desarrollamos tecnología para cosechadores nacionales</h2>
    </div>
    <div>
      <p class="content-lead" style="font-size: 1.15rem; color: var(--text-color); margin-bottom: 1rem;">LA Referencia, por medio de su Equipo Técnico, ha desarrollado una plataforma de software para la cosecha de información que, además de soportar el nodo central de la red regional, funciona como un servicio agregador y portal nacional para los países miembros.</p>
      <p style="color: var(--text-light);">La solución tecnológica se originó de la fase piloto del proyecto BID en 2013. A mediados de 2014, con recursos de los organismos de Ciencia y Tecnología, se determinó la necesidad de una solución transferible y con un conjunto de mejoras tecnológicas constantes.</p>
    </div>
  </div>
</section>

<section class="content-section" style="background: var(--neutral-soft-bg); padding: 4rem 2rem; border-radius: 24px; margin: 4rem 0;">
  <h2 style="text-align: center; margin-bottom: 3rem; font-size: 2rem;">Componentes Clave de la Plataforma</h2>
  <div class="content-grid" style="grid-template-columns: repeat(3, minmax(0, 1fr)); gap: 1.5rem;">
    <article class="content-card" style="border: none; box-shadow: 0 10px 30px rgba(0,0,0,0.04); display: flex; flex-direction: column; justify-content: space-between; padding: 2rem;">
      <div>
        <div style="background: var(--primary-soft-bg); width: 50px; height: 50px; border-radius: 12px; display: flex; align-items: center; justify-content: center; margin-bottom: 1.5rem;">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="var(--primary-color)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line x1="12" y1="15" x2="12" y2="3"></line></svg>
        </div>
        <h3 style="font-size: 1.35rem; margin-bottom: 1rem; color: var(--secondary-color);">LRHarvester</h3>
        <p style="font-size: 0.9rem; color: var(--text-light); line-height: 1.6;">Componente de cosecha, transformación y validación de metadatos OAI-PMH. Es responsable de la cosecha de fuentes, validación de registros y su transformación para el cumplimiento de las directrices de calidad de la red.</p>
      </div>
      <div style="margin-top: 1.5rem; font-size: 0.8rem; font-weight: bold; color: var(--primary-color);">Java 1.7 / Spring / PostgreSQL</div>
    </article>

    <article class="content-card" style="border: none; box-shadow: 0 10px 30px rgba(0,0,0,0.04); display: flex; flex-direction: column; justify-content: space-between; padding: 2rem;">
      <div>
        <div style="background: var(--primary-soft-bg); width: 50px; height: 50px; border-radius: 12px; display: flex; align-items: center; justify-content: center; margin-bottom: 1.5rem;">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="var(--primary-color)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4 12v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-8"></path><polyline points="16 6 12 2 8 6"></polyline><line x1="12" y1="2" x2="12" y2="15"></line></svg>
        </div>
        <h3 style="font-size: 1.35rem; margin-bottom: 1rem; color: var(--secondary-color);">LRProvider</h3>
        <p style="font-size: 0.9rem; color: var(--text-light); line-height: 1.6;">Componente responsable de la publicación de metadatos mediante el protocolo OAI-PMH. Ofrece una alta flexibilidad y escalabilidad para la interoperabilidad con otros agregadores internacionales de metadatos.</p>
      </div>
      <div style="margin-top: 1.5rem; font-size: 0.8rem; font-weight: bold; color: var(--primary-color);">DSpace-XOAI Adaptado</div>
    </article>

    <article class="content-card" style="border: none; box-shadow: 0 10px 30px rgba(0,0,0,0.04); display: flex; flex-direction: column; justify-content: space-between; padding: 2rem;">
      <div>
        <div style="background: var(--primary-soft-bg); width: 50px; height: 50px; border-radius: 12px; display: flex; align-items: center; justify-content: center; margin-bottom: 1.5rem;">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="var(--primary-color)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
        </div>
        <h3 style="font-size: 1.35rem; margin-bottom: 1rem; color: var(--secondary-color);">Buscador / Portal</h3>
        <p style="font-size: 0.9rem; color: var(--text-light); line-height: 1.6;">Portal web de publicación de los metadatos agregados que ofrece una interfaz de búsqueda responsiva, amigable y adaptativa. Además brinda estadísticas completas de calidad y cosechas.</p>
      </div>
      <div style="margin-top: 1.5rem; font-size: 0.8rem; font-weight: bold; color: var(--primary-color);">VuFind Solr Integration</div>
    </article>
  </div>
</section>

<div class="content-split" style="gap: 4rem; margin: 4rem 0;">
  <div>
    <h2 style="color: var(--secondary-color); font-size: 1.8rem; margin-bottom: 1.5rem;">Principios de diseño</h2>
    <p style="color: var(--text-light); margin-bottom: 2rem;">La arquitectura de software de LA Referencia fue diseñada bajo estrictos lineamientos institucionales y técnicos para garantizar su sustentabilidad y eficiencia:</p>
    <div style="display: grid; grid-template-columns: repeat(2, 1fr); gap: 1.5rem;">
      <div style="display: flex; gap: 0.75rem; align-items: flex-start;">
        <span style="color: var(--primary-color); font-weight: bold; font-size: 1.2rem;">✓</span>
        <div>
          <strong style="display: block; color: var(--secondary-color); font-size: 0.95rem;">Transferible</strong>
          <span style="font-size: 0.85rem; color: var(--text-light);">Misma versión para nodo central y nacional.</span>
        </div>
      </div>
      <div style="display: flex; gap: 0.75rem; align-items: flex-start;">
        <span style="color: var(--primary-color); font-weight: bold; font-size: 1.2rem;">✓</span>
        <div>
          <strong style="display: block; color: var(--secondary-color); font-size: 0.95rem;">Escalable</strong>
          <span style="font-size: 0.85rem; color: var(--text-light);">Millones de registros en menos de 24hs.</span>
        </div>
      </div>
      <div style="display: flex; gap: 0.75rem; align-items: flex-start;">
        <span style="color: var(--primary-color); font-weight: bold; font-size: 1.2rem;">✓</span>
        <div>
          <strong style="display: block; color: var(--secondary-color); font-size: 0.95rem;">Open Source</strong>
          <span style="font-size: 0.85rem; color: var(--text-light);">Desarrollo sobre bases tecnológicas abiertas.</span>
        </div>
      </div>
      <div style="display: flex; gap: 0.75rem; align-items: flex-start;">
        <span style="color: var(--primary-color); font-weight: bold; font-size: 1.2rem;">✓</span>
        <div>
          <strong style="display: block; color: var(--secondary-color); font-size: 0.95rem;">Multilingüe</strong>
          <span style="font-size: 0.85rem; color: var(--text-light);">Soporte nativo en español, inglés y portugués.</span>
        </div>
      </div>
    </div>
  </div>

  <div class="content-note" style="margin-top: 0; padding: 2rem; display: flex; flex-direction: column; justify-content: space-between;">
    <div>
      <span class="contact-page-eyebrow" style="color: var(--primary-color); margin-bottom: 0.5rem; display: block;">Última versión</span>
      <h3 style="font-size: 1.6rem; color: var(--secondary-color); margin-bottom: 1.2rem;">Novedades de la Versión 3.0</h3>
      <ul style="list-style: none; padding: 0; margin: 0; display: flex; flex-direction: column; gap: 0.85rem; font-size: 0.9rem; color: var(--text-color);">
        <li style="display: flex; gap: 0.5rem;"><span style="color: var(--primary-color);">•</span> Interfaz de administración responsiva y amigable.</li>
        <li style="display: flex; gap: 0.5rem;"><span style="color: var(--primary-color);">•</span> Rediseño de validaciones orientadas a reglas complejas.</li>
        <li style="display: flex; gap: 0.5rem;"><span style="color: var(--primary-color);">•</span> Objetos de dominio ampliados y diccionarios mejorados.</li>
        <li style="display: flex; gap: 0.5rem;"><span style="color: var(--primary-color);">•</span> Rediseño de base relacional para óptima performance.</li>
        <li style="display: flex; gap: 0.5rem;"><span style="color: var(--primary-color);">•</span> Diagnósticos detallados sobre el motor de búsqueda Solr.</li>
      </ul>
    </div>
    <div style="margin-top: 2rem;">
      <a class="lr-btn lr-btn-solid" href="https://github.com/lareferencia" style="width: 100%; text-align: center;">Acceder al Repositorio en GitHub</a>
    </div>
  </div>
</div>

<section class="content-section" style="border-top: 1px solid var(--border-color); padding-top: 3rem; margin-top: 4rem;">
  <h2 style="text-align: center; margin-bottom: 1.5rem; font-size: 1.6rem;">Implementaciones Exitosas</h2>
  <p style="text-align: center; color: var(--text-light); max-width: 600px; margin: 0 auto 3rem;">Desde 2015, la tecnología de LA Referencia ha sido instalada y validada en organismos gubernamentales y consorcios líderes de la región:</p>
  <div style="display: flex; flex-wrap: wrap; gap: 0.8rem; justify-content: center;">
    <span style="background: #fff; border: 1px solid var(--border-color); border-radius: 30px; padding: 0.5rem 1.2rem; font-size: 0.85rem; font-weight: 600; color: var(--secondary-color);">Argentina (MINCYT)</span>
    <span style="background: #fff; border: 1px solid var(--border-color); border-radius: 30px; padding: 0.5rem 1.2rem; font-size: 0.85rem; font-weight: 600; color: var(--secondary-color);">Brasil (IBICT)</span>
    <span style="background: #fff; border: 1px solid var(--border-color); border-radius: 30px; padding: 0.5rem 1.2rem; font-size: 0.85rem; font-weight: 600; color: var(--secondary-color);">Costa Rica (CONARE)</span>
    <span style="background: #fff; border: 1px solid var(--border-color); border-radius: 30px; padding: 0.5rem 1.2rem; font-size: 0.85rem; font-weight: 600; color: var(--secondary-color);">Chile (CONICYT)</span>
    <span style="background: #fff; border: 1px solid var(--border-color); border-radius: 30px; padding: 0.5rem 1.2rem; font-size: 0.85rem; font-weight: 600; color: var(--secondary-color);">Ecuador (CEDIA)</span>
    <span style="background: #fff; border: 1px solid var(--border-color); border-radius: 30px; padding: 0.5rem 1.2rem; font-size: 0.85rem; font-weight: 600; color: var(--secondary-color);">El Salvador (CBUES)</span>
    <span style="background: #fff; border: 1px solid var(--border-color); border-radius: 30px; padding: 0.5rem 1.2rem; font-size: 0.85rem; font-weight: 600; color: var(--secondary-color);">Perú (CONCYTEC)</span>
    <span style="background: #fff; border: 1px solid var(--border-color); border-radius: 30px; padding: 0.5rem 1.2rem; font-size: 0.85rem; font-weight: 600; color: var(--secondary-color);">Uruguay (ANII)</span>
    <span style="background: #fff; border: 1px solid var(--border-color); border-radius: 30px; padding: 0.5rem 1.2rem; font-size: 0.85rem; font-weight: 600; color: var(--secondary-color);">Portugal (RCAAP)</span>
    <span style="background: #fff; border: 1px solid var(--border-color); border-radius: 30px; padding: 0.5rem 1.2rem; font-size: 0.85rem; font-weight: 600; color: var(--secondary-color);">Panamá (PRICILA)</span>
  </div>
</section>
