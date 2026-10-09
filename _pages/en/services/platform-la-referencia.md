---
layout: page
title: "LA Referencia Platform"
description: "Harvesting, processing and publishing scientific metadata"
language: en
language_reference: services-platform
published: true
menu_parent: services
menu_order: 10
menu_label: "LA Referencia Platform"
menu_icon: "search"
---

<div class="platform-page">
<header class="contact-page-header">
  <p class="contact-page-eyebrow">Technology</p>
  <h1 class="contact-page-title">LA Referencia Platform</h1>
  <p class="contact-page-lead">Harvesting, processing and publishing scientific metadata.</p>
</header>

<section class="content-section" markdown="1">
The LA Referencia platform is a modular solution for collecting records from repositories, improving their interoperability and quality, and publishing them for search and reuse. It integrates metadata harvesting, processing, management, indexing and dissemination services. It can be deployed to operate a repository network or to aggregate and publish collections.

Its architecture follows the record lifecycle: it connects to sources that implement OAI-PMH, preserves harvested metadata, runs validations and transformations, updates indexes, and provides interfaces and protocols for querying or harvesting the information again.
</section>

<section class="content-section platform-flow" aria-labelledby="platform-flow-title">
  <h2 id="platform-flow-title">From repository to publication</h2>
  <ol class="platform-flow-steps">
    <li><span>01</span><strong>OAI-PMH sources</strong><p>Source repositories and collections.</p></li>
    <li><span>02</span><strong>Harvester</strong><p>Record retrieval and tracking.</p></li>
    <li><span>03</span><strong>Validation and transformation</strong><p>Quality rules and format mappings.</p></li>
    <li><span>04</span><strong>Indexing and publication</strong><p>Search, entities and OAI-PMH provider.</p></li>
  </ol>
  <div markdown="1">
The API and management interfaces allow this workflow to be configured and monitored. Actions can be scheduled and executed in a coordinated way; incremental updates reduce reprocessing when only part of the collection has changed.
  </div>
</section>

<section class="content-section" aria-labelledby="platform-components-title">
<h2 id="platform-components-title">Platform components</h2>
<div class="platform-components">
<article class="content-card platform-component" markdown="1">
### Harvester

The **Harvester** is the platform’s management and processing core. It connects to OAI-PMH repositories and allows sources to be organized into networks, harvesting formats and parameters to be defined, and processes to be run manually or on a schedule.

In addition to retrieving records, it coordinates subsequent stages:

- **Validation:** applies configurable rules to metadata and retains results and diagnostics for quality review.
- **Transformation:** runs mappings between formats and prepares records for publication and indexing.
- **Incremental processing:** detects new, modified and deleted records. When configuration and data allow, it reuses previous results and processes only changes; full runs are also supported.
- **Actions and tasks:** coordinates harvesting, validation, indexing and related tasks, tracking their status and results.
- **Network management:** groups sources and configures formats, rules, transformations and publication options for each network.

The Harvester provides a versioned management API and a web administration interface. Access is controlled through users, roles and network assignments; automated integrations can use service accounts and tokens.
</article>

<article class="content-card platform-component" markdown="1">
### Storage and traceability

The platform separates original metadata from processing results. Original records are preserved in metadata storage; catalogs and validation results retain structured information for each run. This organization allows changes to be identified, diagnostics to be consulted and results to be reused across harvests, while retaining the ability to reprocess an entire collection.
</article>

<article class="content-card platform-component" markdown="1">
### Indexing, entities and search

Transformed records can be published in indexes to make them searchable. Solr provides bibliographic indexes used for search and OAI-PMH publication. Elasticsearch or OpenSearch is used to index entities and relationships extracted from metadata. The platform also supports semantic vector indexing when an embedding generation service is configured.

VuFind can serve as a discovery interface over the bibliographic index. The availability of each interface and index depends on the deployment.
</article>

<article class="content-card platform-component" markdown="1">
### OAI-PMH provider

An independent service exposes published records through OAI-PMH 2.0. This allows other platforms and aggregators to harvest metadata from an installation. The service reads the publication index and provides an outgoing interoperability endpoint, complementing the Harvester’s harvesting from source repositories.
</article>

<article class="content-card platform-component" markdown="1">
### Web interfaces

- **Administration:** allows networks and processes to be configured, actions to be run, and progress, results and diagnostics to be reviewed.
- **Repository dashboard:** a read-only interface for monitoring available information and results, with access limited to assigned networks.
- **Search:** VuFind can present indexed records through a discovery interface for end users.
</article>

<article class="content-card platform-component" markdown="1">
### Persistent identifiers

Integration with dARK allows operations involving ARK identifiers to be coordinated, including reservation, preparation and reconciliation. The installation must have access to the minter service and configure the corresponding parameters.
</article>
</div>
</section>

<section class="content-section platform-code" markdown="1">
## Open source and repositories

The platform is developed across a set of Git repositories. The [main platform repository](https://github.com/lareferencia/lareferencia-platform) brings together workspace configuration and deployment. The main components have their own repositories:

- [Harvester (application)](https://github.com/lareferencia/lareferencia-lrharvester-app) and [processing library](https://github.com/lareferencia/lareferencia-core-lib)
- [Administration interface](https://github.com/lareferencia/lareferencia-lrharvester-admin-web) and [Repository dashboard](https://github.com/lareferencia/lareferencia-repository-dashboard)
- [OAI-PMH provider](https://github.com/lareferencia/lareferencia-oai-pmh)
- [Entity model and indexing](https://github.com/lareferencia/lareferencia-entity-lib) and [Entity API](https://github.com/lareferencia/lareferencia-entity-rest)
- [Solr index configuration](https://github.com/lareferencia/lareferencia-solr-cores)
- [dARK/ARK integration](https://github.com/lareferencia/lareferencia-dark-lib)
- [OAI-PMH harvesting client](https://github.com/lareferencia/lareferencia-oclc-harvester)
- [Command-line administration tools](https://github.com/lareferencia/lareferencia-shell)

The main distribution is licensed under GNU AGPL v3; when reusing components, also check the license declared in each repository.

**Deployment configuration:** the VuFind and Dashboard interfaces, semantic indexing, OAI-PMH provider and dARK integration may require additional services, credentials or configuration in each deployment.
</section>
</div>
