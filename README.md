# jekyll-multilang-template

Plantilla neutra de Jekyll para GitHub Pages, con estructura multilenguaje (`en`, `es`, `pt`).

## Requisitos

- Ruby `3.3.x` (el proyecto fija `3.3.10` en `.ruby-version`)
- Bundler `2.3.26`

## Ejecutar localmente (instalando Ruby en macOS)

```bash
brew install ruby@3.3
echo 'export PATH="/opt/homebrew/opt/ruby@3.3/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

cd /Users/lmatas/source/github-pages-site-template
gem install bundler -v 2.3.26
bundle _2.3.26_ install
bundle _2.3.26_ exec jekyll serve --livereload --config _config.yml,_config_github.yml
```

Abrir en: `http://127.0.0.1:4000`

## Ejecutar con Docker (recomendado)

Sin instalar Ruby local:

```bash
cd /Users/lmatas/source/github-pages-site-template
./server_docker.sh
```

Abrir en: `http://127.0.0.1:4000`

## Build de producción

```bash
bundle _2.3.26_ exec jekyll build --config _config.yml,_config_github.yml
```

## Personalización rápida

1. Edita identidad del sitio en `_config.yml` y `_config_github.yml`.
2. Reemplaza contenido en `_pages`, `_posts`, `_news`, `_events` y `_home_cards`.
3. Ajusta la paleta en `_data/theme.yml` (archivo centralizado de colores).
4. Ajusta estilos en `assets/main.scss`.
5. (Opcional) agrega tu `CNAME` si usarás dominio personalizado.

## Modelo de contenido

El template ahora soporta cuatro fuentes editoriales:

- `_posts/<lang>`: blog legacy por idioma.
- `_news/<lang>`: noticias (`output: true`).
- `_events/<lang>`: eventos (`output: true`).
- `_home_cards/<lang>`: tarjetas para home (`output: false`).

La home es componible por idioma con schema:

- `_data/home/en.yml`
- `_data/home/es.yml`
- `_data/home/pt.yml`

La navegacion principal es configurable por idioma en:

- `_data/navigation/en.yml`
- `_data/navigation/es.yml`
- `_data/navigation/pt.yml`

Contratos visuales clave del schema de home:

- `hero_map`
- `band_message`
- `search_stats`
- `faq_cta`
- `resources_cards`
- `logos_grid`
- `newsletter_cta`

Cada documento multilenguaje debe mantener:

- `language: en|es|pt`
- `language_reference: <id-compartido>`

## Generador de contenido (Thor)

Puedes crear contenido tipado con:

```bash
bundle _2.3.26_ exec thor jekyll:new "My Title" -l en -t news
```

Tipos soportados:

- `post`
- `news`
- `event`
- `home_card`

## Paleta de colores

La paleta se configura en:

- `_data/theme.yml`

El archivo define colores base (primario, secundarios, bordes, fondos, gradientes y tonos suaves).  
`assets/main.scss` consume esos valores y los expone como variables CSS (`:root`), por lo que puedes cambiar el look completo editando solo ese archivo de datos.
