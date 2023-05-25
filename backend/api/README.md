## Faky Assets API

_Faky Assets API_ est une API _Python_ qui permet d'interroger des données _random_ à l'instar de :
- Servers
- Containers
- Clusters
- Application

Les données sont générées de manière aléatoire par un script qui prend en argument le nombre de ligne à générer.

```python
$ python3 faky_data.py --amount 2000
```

Le script génère 4 fichiers `json` qui sont distribués au travers des routes :
- `servers.json`
- `containers.json`
- `clusters.json`
- `application.json`

## Routes

Voici les routes ou URI misent à disposition par l'API :

- Servers:
	- All : `http://localhost/servers`
	- Scpecific : `http://localhost/server/{hostname}`
- Containers:
	- All : `http://localhost/containers`
	- Scpecific : `http://localhost/container/{container\_name}`
- Clusters:
	- All : `http://localhost/clusters`
	- Scpecific : `http://localhost/cluster/{cluster\_id}`
- Application:
	- All : `http://localhost/applications`
	- Scpecific : `http://localhost/application/{name}`
