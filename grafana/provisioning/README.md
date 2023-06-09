# Grafana 

## Folder dashboards

## Folder datasources

### Fichier config : datasource.yml 

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
