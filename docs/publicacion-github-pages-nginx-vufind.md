# Publicación del sitio de LA Referencia con GitHub Pages y Nginx

## Objetivo

Publicar el nuevo sitio en **https://www.lareferencia.info**, manteniendo sus contenidos en GitHub Pages, y conservar los enlaces antiguos del buscador.

Las solicitudes a `https://www.lareferencia.info/vufind/…` deben redirigir a `https://buscador.lareferencia.info/…`, eliminando únicamente el prefijo `/vufind` y conservando la ruta posterior y los parámetros de consulta.

## Arquitectura

Se utilizarán tres servicios:

- **Amazon Route 53:** administra el DNS y dirige el dominio público al servidor Nginx.
- **Nginx:** recibe las solicitudes y decide cómo atenderlas según su ruta.
- **GitHub Pages:** publica los contenidos del sitio, actualmente disponibles en `https://new.lareferencia.info`.

```text
Visitante
    │
    ▼
https://www.lareferencia.info
    │
    ▼
Servidor Nginx
    │
    ├── /vufind o /vufind/…
    │       │
    │       ▼
    │   Redirección permanente HTTP 301
    │       │
    │       ▼
    │   https://buscador.lareferencia.info/…
    │
    └── Cualquier otra ruta
            │
            ▼
        Consulta HTTPS a GitHub Pages
        https://new.lareferencia.info
            │
            ▼
        Nginx entrega el contenido al visitante
```

`www.lareferencia.info` será el dominio público. `new.lareferencia.info` continuará como origen del contenido publicado en GitHub Pages.

## Comportamiento esperado

### Páginas del sitio

Para una solicitud a:

```text
https://www.lareferencia.info/es/miembros/
```

Nginx obtendrá el contenido de:

```text
https://new.lareferencia.info/es/miembros/
```

El navegador seguirá mostrando `https://www.lareferencia.info/es/miembros/`.

Este mecanismo es un **proxy inverso**. Nginx obtiene el contenido de GitHub Pages y lo entrega bajo el dominio público, sin redirigir al visitante hacia `new`.

El mismo mecanismo atenderá imágenes, estilos, JavaScript y las versiones en español, inglés y portugués.

### Enlaces antiguos al buscador

Las solicitudes bajo `/vufind` recibirán una redirección permanente HTTP 301:

| Solicitud antigua | Destino |
|---|---|
| `/vufind` | `https://buscador.lareferencia.info/` |
| `/vufind/` | `https://buscador.lareferencia.info/` |
| `/vufind/Record/123456` | `https://buscador.lareferencia.info/Record/123456` |
| `/vufind/Search/Results?lookfor=agua&type=AllFields` | `https://buscador.lareferencia.info/Search/Results?lookfor=agua&type=AllFields` |

El navegador cambiará al dominio del buscador. Las solicitudes posteriores se atenderán directamente allí.

Esto presupone que el nuevo VuFind conserva las rutas y los identificadores de los registros. Si algún identificador cambió durante la migración, será necesaria una correspondencia adicional para esos enlaces.

## DNS en Amazon Route 53

| Nombre | Destino |
|---|---|
| `www.lareferencia.info` | Servidor Nginx |
| `new.lareferencia.info` | GitHub Pages, conservando la configuración actual |
| `buscador.lareferencia.info` | Infraestructura actual del buscador |

Si Nginx está en EC2, conviene utilizar un registro A hacia una **Elastic IP**. Si está detrás de un balanceador de AWS, se utilizará el registro Alias correspondiente.

Route 53 dirige el dominio al servidor; la selección por ruta ocurre en Nginx. DNS no puede separar `/vufind` del resto del sitio.

Si `www` ya apunta al servidor actual y este utiliza Nginx, puede reutilizarse sin modificar el DNS.

También debe definirse el comportamiento de `lareferencia.info` sin `www`. Lo habitual es redirigirlo a `https://www.lareferencia.info`, conservando ruta y parámetros. Ese nombre deberá llegar a un servidor que lo atienda y disponga de un certificado válido para él.

Referencia: [Enrutamiento de tráfico con Route 53](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-aws-resources.html).

## GitHub Pages como origen

GitHub Pages debe conservar **`new.lareferencia.info` como dominio personalizado**, con HTTPS funcionando.

Nginx usará ese nombre para conectarse y para identificar el sitio solicitado ante GitHub Pages:

```nginx
proxy_set_header Host new.lareferencia.info;
proxy_ssl_server_name on;
proxy_ssl_name new.lareferencia.info;
```

No se debe utilizar `www.lareferencia.info` como origen del proxy: ese nombre apunta al propio Nginx y produciría un bucle.

Referencia: [Dominios personalizados en GitHub Pages](https://docs.github.com/github/working-with-github-pages/managing-a-custom-domain-for-your-github-pages-site?platform=linux).

## Configuración de Nginx

Ejemplo para Ubuntu/Debian con certificados de Let's Encrypt. Las rutas de los certificados y del almacén de autoridades de certificación deben ajustarse a la instalación real.

```nginx
# HTTP: enviar las solicitudes al dominio público por HTTPS.
server {
    listen 80;
    server_name www.lareferencia.info;

    return 301 https://www.lareferencia.info$request_uri;
}

# HTTPS: redirigir el buscador antiguo y servir el sitio nuevo.
server {
    listen 443 ssl;
    server_name www.lareferencia.info;

    ssl_certificate
        /etc/letsencrypt/live/www.lareferencia.info/fullchain.pem;
    ssl_certificate_key
        /etc/letsencrypt/live/www.lareferencia.info/privkey.pem;

    # Elimina /vufind y conserva la ruta posterior y los parámetros.
    rewrite ^/vufind(?:/(.*))?$
        https://buscador.lareferencia.info/$1 permanent;

    # El resto del sitio se obtiene desde GitHub Pages.
    location / {
        proxy_pass https://new.lareferencia.info;

        proxy_set_header Host new.lareferencia.info;
        proxy_ssl_server_name on;
        proxy_ssl_name new.lareferencia.info;

        proxy_ssl_verify on;
        proxy_ssl_trusted_certificate
            /etc/ssl/certs/ca-certificates.crt;
    }
}
```

La regla de `/vufind` se ejecuta antes de servir el contenido mediante el proxy. Coincide con `/vufind` y `/vufind/…`, sin afectar a nombres como `/vufind-otra-pagina`.

`permanent` devuelve un HTTP 301. Al no reemplazar explícitamente los argumentos, Nginx conserva los parámetros de consulta originales.

Este ejemplo resuelve el nombre del origen al cargar la configuración. Si cambian sus direcciones IP, puede ser necesario recargar Nginx; la resolución dinámica puede configurarse según la versión instalada.

Referencias:

- [Módulo de proxy de Nginx](https://nginx.org/en/docs/http/ngx_http_proxy_module.html).
- [Reglas de redirección de Nginx](https://nginx.org/en/docs/http/ngx_http_rewrite_module.html).

### Certificados HTTPS

Existen dos conexiones independientes:

1. **Visitante → Nginx:** necesita un certificado válido para `www.lareferencia.info`.
2. **Nginx → GitHub Pages:** utiliza el certificado de `new.lareferencia.info`.

El buscador mantiene su propio certificado para `buscador.lareferencia.info`.

La emisión y renovación del certificado de Nginx deben prepararse antes del cambio público. Si se utiliza validación HTTP de Let's Encrypt, su ruta de validación debe atenderse localmente y quedar fuera de las reglas generales de redirección y proxy, según la configuración del cliente de certificados.

## Ajustes del sitio Jekyll

La configuración efectiva del despliegue debe declarar:

```yaml
url: "https://www.lareferencia.info"
absolute_url: "https://www.lareferencia.info"
baseurl: ""
```

Los enlaces canónicos y cualquier sitemap o feed generado deberán utilizar el dominio público.

El dominio personalizado de GitHub Pages continuará siendo `new.lareferencia.info`: el dominio de alojamiento del origen y la URL pública declarada en el contenido cumplen funciones distintas.

Hay que revisar que los enlaces internos y recursos no estén fijados de forma absoluta a `new.lareferencia.info`. Los enlaces relativos, como `/es/miembros/`, funcionan bajo `www`.

## Procedimiento de puesta en marcha

### 1. Preparar el origen

Confirmar que `https://new.lareferencia.info` sirve correctamente las páginas, los tres idiomas, las imágenes, los estilos, los scripts y la página 404 personalizada.

### 2. Preparar Nginx

Instalar la configuración y disponer del certificado de `www`.

Si existe una regla que envía `/vufind` al servicio antiguo, retirarla o sustituirla. Esas rutas deben tener un único comportamiento: redirigir al nuevo buscador.

### 3. Comprobar antes de cambiar el DNS

Con `curl --resolve` se puede dirigir una solicitud a la IP del Nginx preparado sin modificar todavía el DNS. Sustituir `IP_DEL_NGINX` por la dirección real:

```bash
curl --resolve www.lareferencia.info:443:IP_DEL_NGINX \
  -I https://www.lareferencia.info/es/miembros/
```

Comprobar la redirección:

```bash
curl --resolve www.lareferencia.info:443:IP_DEL_NGINX \
  -I 'https://www.lareferencia.info/vufind/Search/Results?lookfor=agua&type=AllFields'
```

Resultado esperado: estado HTTP 301 y cabecera:

```text
Location: https://buscador.lareferencia.info/Search/Results?lookfor=agua&type=AllFields
```

### 4. Validar y recargar Nginx

```bash
sudo nginx -t
sudo systemctl reload nginx
```

### 5. Cambiar el DNS, si corresponde

Si `www` todavía no apunta al servidor elegido, actualizar el registro en Route 53. Reducir el TTL con antelación facilita la transición.

Durante la propagación pueden coexistir visitantes que lleguen al servidor anterior y al nuevo. Mantener disponible el anterior durante ese período.

### 6. Comprobar el resultado público

- Las páginas se muestran bajo `www`.
- Imágenes, estilos y scripts cargan correctamente.
- `/vufind` y `/vufind/` llegan a la portada del buscador.
- Los enlaces a registros y búsquedas conservan rutas y parámetros.
- Las páginas inexistentes devuelven HTTP 404.
- Los enlaces canónicos utilizan `www`.
- No hay bucles de redirección.
- La renovación del certificado está configurada.

## Operación posterior

La publicación editorial continuará así:

```text
Cambios en el repositorio
    → despliegue de GitHub Pages
    → actualización de new.lareferencia.info
    → contenido disponible a través de www.lareferencia.info
```

No será necesario copiar los archivos del sitio al servidor Nginx.

El ejemplo no añade una caché de contenido en Nginx. GitHub Pages puede aplicar su propia caché y el despliegue puede tardar en reflejarse.

Nginx debe mantenerse disponible, con certificados renovados y conectividad al origen. La disponibilidad de `www` dependerá tanto de Nginx como de GitHub Pages.

## Alcance

Este documento describe la configuración propuesta. No implica que los cambios de infraestructura, DNS o configuración de producción hayan sido aplicados.

El resultado previsto es un sitio publicado desde GitHub Pages bajo el dominio público habitual, con una redirección permanente de los enlaces antiguos de VuFind al nuevo buscador.
