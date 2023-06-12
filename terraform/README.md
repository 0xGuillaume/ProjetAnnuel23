<p align="center">
<img src="https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white"/>
</p>

## Description

Notre dossier `terraform` est composé de plusieurs script `.tf`. Cette séparation n'est pas obligatoire mais nous l'avons adopté dans le but de faciliter les modifications et/ou les évolutions nécessaires aux besoins du projet. 

```bash
.
├── config.yaml         # Configuration file
├── ec2.tf              # Blocks relatif à la création de l'EC2.
├── main.tf             # Contient les informations sur le provider.
├── network.tf          # Blocks relatifs aux élements réseau d'AWS.
├── outputs.tf          # Contient les outputs suite à la création de l'infrastructure.
├── README.md           # Description du répertoire terraform.
└── variables.tf        # Variables utilisées dans les script terraform.
```

## Utilisattion

> Pour utiliser [Terraform](https://www.terraform.io/), vous devez au préalable l'[installer](https://developer.hashicorp.com/terraform/downloads?product_intent=terraform).

Une fois placer dans le repertoire terraform, il faut initialiser le projet (installation des plugins et paquets relatifs à l'utilisation du provider instancié).

```bash
$ terraform init
```

Une fois cela fait, vous pouvez directement déployer l'infrastructure avec la commande suivante.

```bash
$ terraform apply -auto-approve

```

Lorsque vous avez terminé d'utiliser l'infrastructure, **pensez** à bien la détruire à l'aide de la commande ci-dessous.

```bash
$ terraform destroy -auto-approve
```
