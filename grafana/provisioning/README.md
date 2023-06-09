# Grafana 

## Folder dashboards : dashboard.yml, docker-container.json, docker-host.json

### Fichier dashboard.yml

Mappage docker compose : ../grafana/provisioning/dashboards/dashboard.yml:/etc/grafana/provisioning/dashboards/dashboard.yml

Fichier qui permet d'initialiser la source de donnée (Prometheus) pour la création des dashboard.

```
apiVersion: 1

providers:
  - name: 'Prometheus'
    orgId: 1
    folder: ''
    type: file
    disableDeletion: false
    editable: true
    allowUiUpdates: true
    options:
      path: /etc/grafana/provisioning/dashboards
```
### Fichier docker-container.json

Mappage docker compose : ../grafana/provisioning/dashboards/docker-container.json:/etc/grafana/provisioning/dashboards/docker-container.json

Fichier d'un dashboard qui affiche les données DOCKER dans Grafana 

### Fichier docker-host.json

Mappage docker compose : ../grafana/provisioning/dashboards/docker-host.json:/etc/grafana/provisioning/dashboards/docker-host.json

Fichier d'un dashboard qui affiche les données HOST dans Grafana 

## Folder datasources : datasource.yml 

### Fichier datasource.yml 

Mappage docker compose : ../grafana/provisioning/datasources/datasource.yml:/etc/grafana/provisioning/datasources/datasource.yml

Prometheus qui centralise toutes les différentes sources de données, il faut donc que celle-ci pour le projet. 

Ajout de la source de Prometheus dans le fichier :

```
apiVersion: 1

datasources:
  - name: Prometheus
    type: prometheus
    access: proxy
    orgId: 1
    url: http://prometheus:9090
```
