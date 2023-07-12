## Configuration CI/CD pour GitLab Pages

Cette configuration utilise GitLab CI/CD pour déployer une page statique en utilisant GitLab Pages. Lorsqu'une mise à jour est effectuée sur la branche principale ("main"), le script est exécuté pour générer les pages statiques et les déployer.

Voici la configuration CI/CD pour GitLab Pages :

``` 
pages:
  stage: deploy
  script:
  - mkdir .public
  - cp -r * .public
  - mv .public public
  artifacts:
    paths:
    - public
  only:
  - main
```

## Etape par étape

- **pages:** Cette section principale de la configuration CI/CD pour les pages statiques contient toutes les étapes liées au déploiement des pages statiques.

- **stage:** deploy : Cette étape définit la phase de déploiement de la configuration CI/CD. Toutes les étapes du déploiement doivent être incluses dans cette étape.

- **script:** La section script contient les commandes exécutées lors de l'exécution de l'étape de déploiement. Voici les commandes utilisées dans cet exemple :

- - mkdir .public : Crée un répertoire temporaire pour stocker les pages statiques.
- - cp -r * .public : Copie tous les fichiers et répertoires du répertoire courant dans le répertoire temporaire.
- - mv .public public : Renomme le répertoire temporaire en "public" (ce qui est le répertoire par défaut pour les pages statiques de GitLab).

- **artifacts:** La section artifacts spécifie les fichiers à archiver après l'exécution de l'étape de déploiement. Dans cet exemple, seul le répertoire "public" est archivé. Cela signifie que les fichiers contenus dans le répertoire "public" seront disponibles pour être utilisés par GitLab Pages.

- **only:** La section only définit les conditions pour exécuter cette configuration CI/CD. Dans cet exemple, la configuration sera exécutée uniquement lorsque des mises à jour sont effectuées sur la branche principale ("main"). Vous pouvez modifier cette condition en fonction de vos besoins.

## En résumé

Le code (fichiers HTML et CSS) sont hebergés sur un repository GitLab sur dans lequel nous avons défini un fichier .gitlab-ci.yml qui spécifie les étapes que notre pipeline devra suivre pour déployer automatiquement notre site à chaque fois qu'il détectera une modification sur la branche principale (main).
Le site est herbegé gratuitement sur gitlab directement grâce à gitlab page.
Vous pouvez le retrouver ici : https://luckasbosch.gitlab.io/projet_annuel/