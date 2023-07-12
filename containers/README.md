<p align="center">
    <img src="https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white"/>
</p>


## Organisation des containers

Les services utilisés dans le fichier `docker-compose` s'appuient sur des fichiers dans les répertoires ci-dessous.
Chacun des services est associés à l'un de ses répertoires pour faciliter l'intelligibilité du projet.

```bash
.
├── api                            # Image personnalisée et script Python.
├── grafana                        # Dashboards personnalisées Grafana.
├── prometheus                     # Fichiers de configuration prometheus.
├── sql                            # Script de création de la base de données PostgreSQL.
├── statics                        # Fichier statics HTML des NginX.
├── docker-compose.yml             # Orchestration des containers via Docker Compose.
└── README.md                      # Readme.
```
## Images et utilisation

|Image|Rôle|
|-----|----|
|`traefik`|Load Balancing.|
|`adminer`|Interroger une base de données SQL via client web.|
|`python`|Utilisé pour une API [Fast API](https://fastapi.tiangolo.com/).|
|`grafana`|Monitoring des containers et de l'host avec des dashboards personnalisés.|
|`nginx`|Sites web statics.|
|`postgresql`|Base de données PostgreSQL.|
|`prometheus`|Agent pour le monitoring grafana.|
|`redis`|Base de données SQL utilisé par Grafana.|
