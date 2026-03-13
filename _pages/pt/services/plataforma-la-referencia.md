---
layout: page
title: "Plataforma LA Referencia"
description: "Software de colheita e serviços da LA Referencia"
language: pt
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
    <h2>Desenvolvemos tecnologia para colheitadeiras nacionais</h2>
  </div>
  <div>
    <p>A LA Referencia, por meio de sua Equipe Técnica, desenvolveu uma plataforma de software livre e de código aberto (GPL 3) para a colheita de informações, que não apenas dá suporte ao nó central da rede regional, mas também funciona como serviço agregador e portal nacional para os países membros. Essa solução tecnológica teve origem durante a fase piloto do projeto do BID, de março a setembro de 2013. Em meados de 2014, com o apoio das agências de Ciência e Tecnologia, foi identificada a necessidade de uma solução transferível com um conjunto de melhorias tecnológicas.</p>
  </div>
</div>

<section class="content-section">
  <h2>Implementações</h2>
  <p>Desde 2015, a tecnologia da LA Referencia foi instalada em:</p>
  <ul class="content-list">
    <li>Argentina (MINCYT)</li>
    <li>Brasil (IBICT)</li>
    <li>Colômbia (Renata, Colciencia, Ministério da Educação)</li>
    <li>Costa Rica (CONARE)</li>
    <li>Chile (CONICYT, LR Harvester e LR Provider)</li>
    <li>Equador (CEDIA, SENECYT)</li>
    <li>El Salvador (CBUES, Vice-Ministério de CyT)</li>
    <li>Peru (CONCYTEC)</li>
    <li>Uruguai (ANII)</li>
    <li>Portugal (RCAAP)</li>
    <li>Panamá (PRICILA)</li>
  </ul>
</section>

<section class="content-section">
  <h2>Componentes</h2>
  <div class="content-grid">
    <article class="content-card">
      <h3>LRHarvester</h3>
      <p>Componente de colheita, transformação e validação de metadados OAI-PMH. Este componente é responsável por colher as fontes OAI, validar os registros de metadados e transformá-los para cumprir as diretrizes de qualidade da rede. O componente de colheita foi inicialmente baseado no OCLCHarvester2. A plataforma é desenvolvida em Java 1.7, utilizando o framework Spring e o motor de banco de dados PostgreSQL 9.X. Também é compatível com MySQL.</p>
    </article>
    <article class="content-card">
      <h3>LRProvider</h3>
      <p>Este componente é responsável por publicar metadados por meio do protocolo OAI-PMH. Atualmente, ele é baseado no software DSpace-XOAI, que oferece alta flexibilidade e escalabilidade para a interoperabilidade com outros agregadores internacionais de metadados.</p>
    </article>
    <article class="content-card">
      <h3>Motor de Busca / Portal de Serviços</h3>
      <p>Este componente fornece uma interface de busca amigável e responsiva para dispositivos móveis, permitindo o acesso aos metadados agregados. Além disso, oferece estatísticas sobre a qualidade dos metadados e o andamento dos processos de colheita. O portal é baseado no software livre VuFind, com módulos personalizados desenvolvidos especificamente para a plataforma.</p>
    </article>
  </div>
</section>

<section class="content-section">
  <h2>Versão 3.0</h2>
  <ul class="content-list">
    <li>Interface administrativa mais amigável e responsiva.</li>
    <li>Mecanismo de validação e transformação redesenhado, permitindo a implementação de regras que suportam diretrizes mais complexas.</li>
    <li>Objetos de domínio ampliados para representar e armazenar validadores, transformadores, vocabulários controlados e dicionários de transformação.</li>
    <li>Estrutura relacional redesenhada para melhor desempenho.</li>
    <li>Armazenamento aprimorado de detalhes de diagnóstico relacionados ao motor Solr.</li>
    <li>Interface de diagnósticos e relatórios redesenhada.</li>
    <li>Validação multi-regra e multi-campo, juntamente com suporte aprimorado para colheita de OJS.</li>
  </ul>
</section>

<section class="content-section">
  <h2>Princípios de design</h2>
  <ul class="content-list">
    <li>Transferível: a versão do nó central deve ser a mesma que a dos nós nacionais.</li>
    <li>Responsivo: suporte ao acesso por dispositivos móveis.</li>
    <li>Multilíngue: suporte, pelo menos, em inglês e português.</li>
    <li>Orientado ao negócio: foco na validação e transformação de metadados em OAI.</li>
    <li>Suporte às diretrizes OpenAIRE e flexibilidade para atualização de novas diretrizes.</li>
    <li>Escalável: deve colher centenas de repositórios e mais de um milhão de registros em menos de 24 horas.</li>
    <li>Gerenciável e amigável ao usuário: ferramentas de diagnóstico, validação e relatórios para administradores.</li>
    <li>Código aberto: desenvolvimento e uso de componentes e soluções baseados em tecnologias abertas.</li>
    <li>Estatísticas: desenvolvimento de novos módulos.</li>
    <li>Custo-efetivo: baseado em distribuições Linux gratuitas como Ubuntu.</li>
  </ul>
</section>

<p><a class="lr-btn lr-btn-solid" href="https://github.com/lareferencia">Acesse o GitHub</a></p>
