---
layout: page
title: "Plataforma LA Referencia"
description: "Cosecha, procesamiento y publicación de metadatos científicos"
language: es
language_reference: services-platform
published: true
menu_parent: services
menu_order: 10
menu_label: "Plataforma LA Referencia"
menu_icon: "search"
---

<div class="platform-page">
<header class="contact-page-header">
  <p class="contact-page-eyebrow">Tecnología</p>
  <h1 class="contact-page-title">Plataforma LA Referencia</h1>
  <p class="contact-page-lead">Cosecha, procesamiento y publicación de metadatos científicos.</p>
</header>

<section class="content-section" markdown="1">
La plataforma LA Referencia es una solución modular para recolectar registros de repositorios, mejorar su interoperabilidad y calidad, y publicarlos para búsqueda y reutilización. Integra servicios de cosecha, procesamiento, administración, indexación y exposición de metadatos. Puede desplegarse para operar una red de repositorios o para agregar y publicar colecciones.

Su arquitectura sigue el ciclo de vida del registro: conecta con fuentes que implementan OAI-PMH, conserva los metadatos recolectados, ejecuta validaciones y transformaciones, actualiza índices y ofrece interfaces y protocolos para consultar o volver a cosechar la información.
</section>

<section class="content-section platform-flow" aria-labelledby="platform-flow-title">
  <h2 id="platform-flow-title">Del repositorio a la publicación</h2>
  <ol class="platform-flow-steps">
    <li><span>01</span><strong>Fuentes OAI-PMH</strong><p>Repositorios y colecciones de origen.</p></li>
    <li><span>02</span><strong>Cosechador</strong><p>Recuperación y seguimiento de registros.</p></li>
    <li><span>03</span><strong>Validación y transformación</strong><p>Reglas de calidad y mapeos de formatos.</p></li>
    <li><span>04</span><strong>Indexación y publicación</strong><p>Búsqueda, entidades y proveedor OAI-PMH.</p></li>
  </ol>
  <div markdown="1">
La API y las interfaces de administración permiten configurar y seguir este flujo. Las acciones pueden programarse y ejecutarse de forma coordinada; las actualizaciones incrementales reducen el reprocesamiento cuando solo cambió una parte de la colección.
  </div>
</section>

<section class="content-section" aria-labelledby="platform-components-title">
<h2 id="platform-components-title">Componentes de la plataforma</h2>
<div class="platform-components">
<article class="content-card platform-component" markdown="1">
### Cosechador

El **Cosechador** es el núcleo de gestión y procesamiento de la plataforma. Se conecta con repositorios OAI-PMH y permite organizar las fuentes en redes, definir formatos y parámetros de cosecha, y ejecutar procesos manuales o programados.

Además de recuperar registros, coordina las etapas posteriores:

- **Validación:** aplica reglas configurables a los metadatos y conserva resultados y diagnósticos para revisar su calidad.
- **Transformación:** ejecuta mapeos entre formatos y prepara los registros para su publicación e indexación.
- **Procesamiento incremental:** detecta registros nuevos, modificados y eliminados. Cuando la configuración y los datos lo permiten, reutiliza resultados previos y procesa solo los cambios; también admite ejecuciones completas.
- **Acciones y tareas:** coordina cosecha, validación, indexación y tareas relacionadas, con seguimiento de estado y resultados.
- **Gestión de redes:** agrupa fuentes y configura para cada red sus formatos, reglas, transformaciones y opciones de publicación.
{: role="list"}

El Cosechador dispone de una API de gestión versionada y una interfaz web de administración. Los accesos se controlan mediante usuarios, roles y asignaciones a redes; las integraciones automatizadas pueden utilizar cuentas técnicas y tokens.
</article>

<article class="content-card platform-component" markdown="1">
### Almacenamiento y trazabilidad

La plataforma separa los metadatos originales de los resultados de procesamiento. Los registros originales se conservan en almacenamiento de metadatos; catálogos y resultados de validación mantienen información estructurada por ejecución. Esta organización permite identificar cambios, consultar diagnósticos y reutilizar resultados entre cosechas sin perder la posibilidad de reprocesar una colección completa.
</article>

<article class="content-card platform-component" markdown="1">
### Indexación, entidades y búsqueda

Los registros transformados pueden publicarse en índices para habilitar su consulta. Solr proporciona índices bibliográficos utilizados por la búsqueda y la publicación OAI-PMH. Elasticsearch u OpenSearch se utiliza para indexar entidades y relaciones extraídas de los metadatos. La plataforma también contempla indexación semántica con vectores cuando se configura un servicio de generación de embeddings.

VuFind puede funcionar como interfaz de descubrimiento sobre el índice bibliográfico. La disponibilidad de cada interfaz e índice depende del despliegue.
</article>

<article class="content-card platform-component" markdown="1">
### Proveedor OAI-PMH

Un servicio independiente expone los registros publicados mediante OAI-PMH 2.0. Así, otras plataformas y agregadores pueden cosechar los metadatos de una instalación. El servicio lee el índice de publicación y ofrece un punto de interoperabilidad de salida, complementario a la cosecha que realiza el Cosechador desde las fuentes.
</article>

<article class="content-card platform-component" markdown="1">
### Interfaces web

- **Administración:** permite configurar redes y procesos, ejecutar acciones y consultar su progreso, resultados y diagnósticos.
- **Dashboard de repositorios:** interfaz de consulta de solo lectura para supervisar información y resultados disponibles, con acceso limitado según las redes asignadas.
- **Búsqueda:** VuFind puede presentar los registros indexados como una interfaz de descubrimiento para usuarios finales.
{: role="list"}
</article>

<article class="content-card platform-component" markdown="1">
### Identificadores persistentes

La integración con dARK permite coordinar operaciones relacionadas con identificadores ARK, incluidas reserva, preparación y conciliación. Requiere que la instalación tenga acceso al servicio minter y configure los parámetros correspondientes.
</article>
</div>
</section>

<section class="content-section platform-code" markdown="1">
## Código abierto y repositorios

La plataforma se desarrolla como un conjunto de repositorios Git. El [repositorio principal de la plataforma](https://github.com/lareferencia/lareferencia-platform) reúne la configuración del workspace y el despliegue. Los componentes principales tienen repositorios propios:

- [Cosechador (aplicación)](https://github.com/lareferencia/lareferencia-lrharvester-app) y [biblioteca de procesamiento](https://github.com/lareferencia/lareferencia-core-lib)
- [Interfaz de administración](https://github.com/lareferencia/lareferencia-lrharvester-admin-web) y [Dashboard de repositorios](https://github.com/lareferencia/lareferencia-repository-dashboard)
- [Proveedor OAI-PMH](https://github.com/lareferencia/lareferencia-oai-pmh)
- [Modelo e indexación de entidades](https://github.com/lareferencia/lareferencia-entity-lib) y [API de entidades](https://github.com/lareferencia/lareferencia-entity-rest)
- [Configuración de índices Solr](https://github.com/lareferencia/lareferencia-solr-cores)
- [Integración dARK/ARK](https://github.com/lareferencia/lareferencia-dark-lib)
- [Cliente de cosecha OAI-PMH](https://github.com/lareferencia/lareferencia-oclc-harvester)
- [Herramientas de administración por línea de comandos](https://github.com/lareferencia/lareferencia-shell)
{: role="list"}

La distribución principal está bajo GNU AGPL v3; al reutilizar componentes, consulta también la licencia declarada en cada repositorio.


**Configuración del despliegue:** las interfaces VuFind y Dashboard, la indexación semántica, el proveedor OAI-PMH y la integración dARK pueden requerir servicios, credenciales o configuración adicionales en cada despliegue.
</section>
</div>
