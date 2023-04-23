# Docker Compose

Le fichier `docker-compose.yml` permet de créer l'infrastructure de notre projet. 

Les services (_containers_) définis sont séparés en 3 catégories :
- Expo (_Frontend_)
- Compute (_Middle_)
- Data (_Backend_)


## Note

Je suis repassé au `docker-compose` le temps que le cluster soit mis en place par Bochi. 
C'est plus facile à gérer que le Terraform où on a eu pas mal de soucis avec Rémi. 

Avec ce setup les images sont **publiques** et sont récupérées depuis le _Docker Hub_.
