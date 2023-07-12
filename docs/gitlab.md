# Documentation technique GitLAB CI/CD HTML



## Introduction

Pour ce projet, nous allons mettre en place une pipline CI/CD avec gitlab. 
Le but est de mettre à jour automatiquement notre site à chaque fois qu'on modifie le code.

## Configuration de Traefik

Le service Traefik est mis en place avec l'image Docker traefik:v2.4. Voici les paramètres de configuration que vous retrouverez dans la section Traefik du fichier docker-compose.yml :

- `--api.insecure=true` : Cette commande active l'API de Traefik sans avoir besoin d'authentification. Pour des raisons de sécurité, il est préférable de la désactiver lorsqu'on passe en production.
- `--providers.docker=true` : Grâce à cette commande, Traefik peut activer le fournisseur Docker lui permettant de détecter et configurer automatiquement les nouveaux conteneurs Docker.
- `--providers.docker.exposedbydefault=false` : Cette instruction indique que les services Docker ne seront pas automatiquement exposés par Traefik. Ainsi, seuls les services étiquetés spécifiquement seront accessibles via Traefik.
- `--entrypoints.web.address=:80` : Cette commande définit l'IP et le port sur lesquels Traefik sera à l'écoute des requêtes entrantes.

Le service Traefik rend les ports 80 et 8084 du conteneur accessibles depuis les ports correspondants de l'hôte, pour permettre l'accès à la console de Traefik (via le port 8084) ainsi qu'au trafic HTTP entrant (via le port 80).

En dernier lieu, le volume `/var/run/docker.sock:/var/run/docker.sock` est monté pour donner à Traefik l'accès à l'API Docker et lui permettre de récupérer les informations sur les conteneurs en exécution.

## Configuration des services Nginx

Pour le projet, nous avons quatre services Nginx (nginxLB01, nginxLB02, nginxLB03 et nginxLB04) tous configurés de façon similaire. Voici les éléments principaux de la configuration pour chaque service Nginx :

- `image: nginx:latest` : Cette commande spécifie l'image Docker à utiliser pour chaque service Nginx. Dans notre cas, nous utilisons l'image nginx:latest.
- `networks: back` : Ce paramètre relie le service Nginx à un réseau nommé back, ce qui autorise Traefik à communiquer avec les services Nginx par l'intermédiaire de ce réseau.
- `volumes: ./statics/nginxXX.html:/usr/share/nginx/html/index.html` : Ce volume montre le fichier HTML personnalisé propre à chaque service Nginx. Les fichiers HTML sont enregistrés localement dans le répertoire ./statics et montés dans le conteneur Nginx pour être utilisés comme pages d'accueil personnalisées.
- `labels: "traefik.enable=true"` : Ce label active Traefik pour ce service Nginx spécifique. Cela signifie que Traefik dirigera le trafic entrant vers ce service.
- `labels: "traefik.http.routers.nginx.rule=HostRegexp({host:.+})"` : Ce label établit la règle de routage pour le service Nginx. Dans notre cas, Traefik utilise une regex ({host:.+}) pour identifier l'hôte dans la requête entrante et l'utiliser pour acheminer le trafic vers le service Nginx correspondant.
- `labels: "traefik.http.services.nginx.loadbalancer.server.port=80"` : Ce label indique le port sur lequel le service Nginx est à l'écoute des requêtes entrantes, soit le port 80.

!!! Les labels `traefik.enable=true`, `traefik.http.routers.nginx.rule`, et `traefik.http.services.nginx.loadbalancer.server.port` doivent être définis pour chaque service Nginx pour qu'ils soient accessibles via Traefik.