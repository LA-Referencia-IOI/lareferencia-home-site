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

<h1>Plataforma LA Referencia</h1>

<div class="content-split">
  <div>
    <h2>Desarrollamos tecnología para cosechadores nacionales</h2>
  </div>
  <div>
    <p>LA Referencia, por medio de su Equipo Técnico, ha desarrollado una plataforma de software libre (GPL 3) para la cosecha de información que, además de soportar el nodo central de la red regional, funciona como un servicio agregador y portal nacional para los países miembros. La solución tecnológica se originó de la fase piloto del proyecto BID de marzo a setiembre de 2013. A mediados de 2014, con recursos de los organismos de Ciencia y Tecnología, se determinó la necesidad de una solución transferible y con un conjunto de mejoras tecnológicas.</p>
  </div>
</div>

<section class="content-section">
  <h2>Implementaciones</h2>
  <p>Desde 2015, la tecnología de LA Referencia se instaló en:</p>
  <ul class="content-list">
    <li>Argentina (MINCYT)</li>
    <li>Brasil (IBICT)</li>
    <li>Colombia (Renata, Colciencia, Ministerio de Educación)</li>
    <li>Costa Rica (CONARE)</li>
    <li>Chile (CONICYT, LR Harvester y LR Provider)</li>
    <li>Ecuador (CEDIA, SENECYT)</li>
    <li>El Salvador (CBUES, Viceministerio de CyT)</li>
    <li>Perú (CONCYTEC)</li>
    <li>Uruguay (ANII)</li>
    <li>Portugal (RCAAP)</li>
    <li>Panamá (PRICILA)</li>
  </ul>
</section>

<section class="content-section">
  <h2>Componentes</h2>
  <div class="content-grid">
    <article class="content-card">
      <h3>LRHarvester</h3>
      <p>Componente de cosecha, transformación y validación de metadatos OAI-PMH. Es responsable de la cosecha de fuentes OAI, validación de registros de metadatos y su transformación para el cumplimiento de las directrices de calidad de la red. El componente de cosecha se basó inicialmente en OCLCHarvester2. La plataforma está desarrollada en lenguaje Java 1.7, utiliza el framework Spring y el motor de base de datos PostgreSQL 9.X. También funciona sobre MySQL.</p>
    </article>
    <article class="content-card">
      <h3>LRProvider</h3>
      <p>Componente responsable de la publicación de metadatos mediante el protocolo OAI-PMH, actualmente derivado del software DSpace-XOAI, que ofrece una alta flexibilidad y escalabilidad para la interoperabilidad con otros agregadores internacionales de metadatos.</p>
    </article>
    <article class="content-card">
      <h3>Buscador / Portal de servicios</h3>
      <p>Portal web de publicación de los metadatos agregados que ofrece una interfaz de búsqueda amigable y adaptativa para dispositivos móviles. Además brinda estadísticas sobre calidad de metadatos y evolución de las cosechas. Este componente está basado en el software libre VuFind, sobre el que se han desarrollado módulos específicos.</p>
    </article>
  </div>
</section>

<section class="content-section">
  <h2>Versión 3.0</h2>
  <ul class="content-list">
    <li>Interfaz de administración responsiva y más amigable.</li>
    <li>Rediseño del mecanismo de validación y transformación orientado a la implementación de reglas que trabajen con directrices más complejas.</li>
    <li>Ampliación de los objetos de dominio para reflejar y almacenar validadores, transformadores, valores controlados y diccionarios de transformación.</li>
    <li>Rediseño de la estructura relacional para mejorar performance.</li>
    <li>Almacenamiento de mayor cantidad de detalles de diagnóstico sobre motor Solr.</li>
    <li>Rediseño de interfaz de diagnóstico y reportes.</li>
    <li>Validación multireglas, multicampo y mejoras para cosechas a OJS.</li>
  </ul>
</section>

<section class="content-section">
  <h2>Principios de diseño</h2>
  <ul class="content-list">
    <li>Transferible: la versión del nodo central debe ser la misma que los nodos nacionales.</li>
    <li>Responsiva: acceso por dispositivos móviles.</li>
    <li>Multilingüe: soporte al menos en inglés y portugués.</li>
    <li>Orientada al negocio: foco en validaciones y transformaciones de metadatos en OAI.</li>
    <li>Soporte para directrices OpenAIRE y flexibilidad para actualización de nuevas directrices.</li>
    <li>Escalable: debe cosechar cientos de repositorios y más de un millón de registros en menos de 24 horas.</li>
    <li>Administrable y amigable: herramientas de diagnóstico, validación y reportes para administradores.</li>
    <li>Open source: desarrollo y uso de componentes y soluciones sobre bases tecnológicas abiertas.</li>
    <li>Estadísticas: desarrollo de nuevos módulos.</li>
    <li>Económica: basada en distribuciones Linux gratuitas como Ubuntu.</li>
  </ul>
</section>

<p><a class="lr-btn lr-btn-solid" href="https://github.com/lareferencia">Ir a GitHub</a></p>
