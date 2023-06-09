#Prometheus 

## Fichier config : prometheus.yml 
  
  Mappage docker-compose :  ./prometheus/prometheus.yml:/etc/prometheus/prometheus.yml
  
## Ajout des jobs scrapper de données 

### Cadvisor

Ce job permet de récuperer les données de cadvisor l'outil d'analyse de performances pour les conteneurs.

```
 - job_name: 'cadvisor'
    scrape_interval: 5s
    static_configs:
      - targets: ['cadvisor:8080'] 
```

### Node-Exporter 

Ce job collecte les métriques du Node Exporter, qui est un outil d'exposition des métriques système pour les machines hôtes.
 
 ```
- job_name: 'node_exporter'
    static_configs:
      - targets: ['node-exporter:9100']
```

### Docker-containers

Ce job collecte les métriques des conteneurs Docker.

```
  - job_name: 'docker-containers'
    metrics_path: '/metrics'
    static_configs:
      - targets: ['10.0.0.4']
    file_sd_configs:
      - files:
          - '/etc/prometheus/targets/docker-containers.json'
```

### Prometheus

Ce job permet de récuperer ses propres métriques du container. 

```
  - job_name: 'prometheus'
    static_configs:
      - targets: ['localhost:9090']
```



 


