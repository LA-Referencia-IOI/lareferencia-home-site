---
layout: page
title: "Plataforma LA Referencia"
description: "Coleta, processamento e publicação de metadados científicos"
language: pt
language_reference: services-platform
published: true
menu_parent: services
menu_order: 10
menu_label: "Plataforma LA Referencia"
menu_icon: "search"
---

<div class="platform-page">
<header class="contact-page-header">
  <p class="contact-page-eyebrow">Tecnologia</p>
  <h1 class="contact-page-title">Plataforma LA Referencia</h1>
  <p class="contact-page-lead">Coleta, processamento e publicação de metadados científicos.</p>
</header>

<section class="content-section" markdown="1">
A plataforma LA Referencia é uma solução modular para coletar registros de repositórios, melhorar sua interoperabilidade e qualidade e publicá-los para busca e reutilização. Integra serviços de coleta, processamento, administração, indexação e disponibilização de metadados. Pode ser implantada para operar uma rede de repositórios ou para agregar e publicar coleções.

Sua arquitetura acompanha o ciclo de vida do registro: conecta-se a fontes que implementam OAI-PMH, preserva os metadados coletados, executa validações e transformações, atualiza índices e oferece interfaces e protocolos para consultar ou coletar novamente as informações.
</section>

<section class="content-section platform-flow" aria-labelledby="platform-flow-title">
  <h2 id="platform-flow-title">Do repositório à publicação</h2>
  <ol class="platform-flow-steps">
    <li><span>01</span><strong>Fontes OAI-PMH</strong><p>Repositórios e coleções de origem.</p></li>
    <li><span>02</span><strong>Coletor</strong><p>Recuperação e acompanhamento de registros.</p></li>
    <li><span>03</span><strong>Validação e transformação</strong><p>Regras de qualidade e mapeamentos de formatos.</p></li>
    <li><span>04</span><strong>Indexação e publicação</strong><p>Busca, entidades e provedor OAI-PMH.</p></li>
  </ol>
  <div markdown="1">
A API e as interfaces de administração permitem configurar e acompanhar esse fluxo. As ações podem ser agendadas e executadas de forma coordenada; as atualizações incrementais reduzem o reprocessamento quando apenas parte da coleção foi alterada.
  </div>
</section>

<section class="content-section" aria-labelledby="platform-components-title">
<h2 id="platform-components-title">Componentes da plataforma</h2>
<div class="platform-components">
<article class="content-card platform-component" markdown="1">
### Coletor

O **Coletor** é o núcleo de gestão e processamento da plataforma. Ele se conecta a repositórios OAI-PMH e permite organizar as fontes em redes, definir formatos e parâmetros de coleta e executar processos manualmente ou de forma agendada.

Além de recuperar registros, coordena as etapas seguintes:

- **Validação:** aplica regras configuráveis aos metadados e preserva resultados e diagnósticos para avaliar sua qualidade.
- **Transformação:** executa mapeamentos entre formatos e prepara os registros para publicação e indexação.
- **Processamento incremental:** detecta registros novos, modificados e excluídos. Quando a configuração e os dados permitem, reutiliza resultados anteriores e processa apenas as alterações; também permite execuções completas.
- **Ações e tarefas:** coordena coleta, validação, indexação e tarefas relacionadas, com acompanhamento de status e resultados.
- **Gestão de redes:** agrupa fontes e configura os formatos, regras, transformações e opções de publicação de cada rede.
{: role="list"}

O Coletor oferece uma API de gestão versionada e uma interface web de administração. O acesso é controlado por meio de usuários, perfis de acesso e atribuições a redes; integrações automatizadas podem utilizar contas de serviço e tokens.
</article>

<article class="content-card platform-component" markdown="1">
### Armazenamento e rastreabilidade

A plataforma separa os metadados originais dos resultados do processamento. Os registros originais são preservados no armazenamento de metadados; os catálogos e os resultados de validação mantêm informações estruturadas por execução. Essa organização permite identificar alterações, consultar diagnósticos e reutilizar resultados entre coletas, mantendo a possibilidade de reprocessar uma coleção inteira.
</article>

<article class="content-card platform-component" markdown="1">
### Indexação, entidades e busca

Os registros transformados podem ser publicados em índices para permitir sua consulta. O Solr fornece índices bibliográficos utilizados na busca e na publicação via OAI-PMH. O Elasticsearch ou o OpenSearch é utilizado para indexar entidades e relações extraídas dos metadados. A plataforma também permite indexação semântica com vetores quando um serviço de geração de embeddings é configurado.

O VuFind pode funcionar como interface de descoberta sobre o índice bibliográfico. A disponibilidade de cada interface e índice depende da implantação.
</article>

<article class="content-card platform-component" markdown="1">
### Provedor OAI-PMH

Um serviço independente disponibiliza os registros publicados por meio do OAI-PMH 2.0. Assim, outras plataformas e agregadores podem coletar os metadados de uma instalação. O serviço lê o índice de publicação e oferece um ponto de interoperabilidade de saída, complementar à coleta que o Coletor realiza nas fontes.
</article>

<article class="content-card platform-component" markdown="1">
### Interfaces web

- **Administração:** permite configurar redes e processos, executar ações e consultar seu progresso, resultados e diagnósticos.
- **Dashboard de repositórios:** interface de consulta somente para leitura, destinada ao acompanhamento das informações e dos resultados disponíveis, com acesso limitado às redes atribuídas.
- **Busca:** o VuFind pode apresentar os registros indexados em uma interface de descoberta para usuários finais.
{: role="list"}
</article>

<article class="content-card platform-component" markdown="1">
### Identificadores persistentes

A integração com o dARK permite coordenar operações relacionadas a identificadores ARK, incluindo reserva, preparação e conciliação. A instalação precisa ter acesso ao serviço minter e configurar os parâmetros correspondentes.
</article>
</div>
</section>

<section class="content-section platform-code" markdown="1">
## Código aberto e repositórios

A plataforma é desenvolvida em um conjunto de repositórios Git. O [repositório principal da plataforma](https://github.com/lareferencia/lareferencia-platform) reúne a configuração do workspace e da implantação. Os principais componentes têm seus próprios repositórios:

- [Coletor (aplicação)](https://github.com/lareferencia/lareferencia-lrharvester-app) e [biblioteca de processamento](https://github.com/lareferencia/lareferencia-core-lib)
- [Interface de administração](https://github.com/lareferencia/lareferencia-lrharvester-admin-web) e [Dashboard de repositórios](https://github.com/lareferencia/lareferencia-repository-dashboard)
- [Provedor OAI-PMH](https://github.com/lareferencia/lareferencia-oai-pmh)
- [Modelo e indexação de entidades](https://github.com/lareferencia/lareferencia-entity-lib) e [API de entidades](https://github.com/lareferencia/lareferencia-entity-rest)
- [Configuração de índices Solr](https://github.com/lareferencia/lareferencia-solr-cores)
- [Integração dARK/ARK](https://github.com/lareferencia/lareferencia-dark-lib)
- [Cliente de coleta OAI-PMH](https://github.com/lareferencia/lareferencia-oclc-harvester)
- [Ferramentas de administração por linha de comando](https://github.com/lareferencia/lareferencia-shell)
{: role="list"}

A distribuição principal está sob a licença GNU AGPL v3; ao reutilizar componentes, consulte também a licença declarada em cada repositório.

**Configuração da implantação:** as interfaces VuFind e Dashboard, a indexação semântica, o provedor OAI-PMH e a integração com o dARK podem exigir serviços, credenciais ou configurações adicionais em cada implantação.
</section>
</div>
