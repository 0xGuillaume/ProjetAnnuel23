import random
import string
from datetime import date, timedelta


def generate_random_string(length):
    """Genere chaine de caractere aleatoire"""
    letters = string.ascii_letters
    return ''.join(random.choice(letters) for _ in range(length))


def generate_servers_region():
    """Retourne une region AWS aleatoire pour la colonne "Region" de la table"servers" """
    
    regions = ['eu-central-1', 'eu-west-1', 'eu-west-2', 'eu-south-1', 'eu-west-3']
    return random.choice(regions)


def generate_servers_uptodate():
    """retourne une valeur aleatoire pour la colonne "Uptodate" de la table "servers" """
    
    start_date = date(2023, 5, 20)
    end_date = date(2023, 5, 31)
    random_date = start_date + timedelta(days=random.randint(0, (end_date - start_date).days))
    return random_date.strftime('%Y-%m-%d')


def generate_servers_os():
    """retourne une valeur aleatoire pour la colonne "Os" de la table "servers" """
    os_choices = ['RHEL7', 'RHEL8', 'Windows_server_2012', 'UbuntuServer_20.04', 'CentOS7', 'CentOS8', 'Debian10', 'Fedora33', 'Fedora34', 'SUSE11', 'SUSE12', 'OpenSUSE15', 'FreeBSD12', 'FreeBSD13']
    return random.choice(os_choices)


def generate_containers_name():
    """retourne une valeur aleatoire pour la colonne "Name" de la table "containers" """
    return f'DCK{random.randint(1, 1000):02d}'


def generate_containers_image():
    """retourne une valeur aleatoire pour la colonne "Image" de la table "containers" """
    
    image_choices = ['nginx:latest', 'traefik:latest', 'alpine:latest', 'python:latest', 'postgres:latest', 'mysql:latest', 'redis:latest', 'mongodb:latest', 'wordpress:latest', 'jenkins:latest', 'gitlab:latest', 'node:latest', 'php:latest', 'elasticsearch:latest', 'rabbitmq:latest']
    return random.choice(image_choices)


def generate_databases_name():
    """retourne une valeur aleatoire pour la colonne "Name" de la table "databases" """
    
    return f'DB{random.randint(1, 1000):02d}'


def generate_databases_size():
    """retourne une valeur aleatoire pour la colonne "Size" de la table "databases" """
    
    sizes = [100, 200, 300, 400, 500]
    return random.choice(sizes)


def generate_databases_uptodate():
    """retourne une valeur aleatoire pour la colonne "Uptodate" de la table "databases" """
    
    start_date = date(2023, 5, 20)
    end_date = date(2023, 5, 31)
    random_date = start_date + timedelta(days=random.randint(0, (end_date - start_date).days))
    return random_date.strftime('%Y-%m-%d')


insert_queries = []
"""retourne des requetes d'insertion pour chaque ligne de chaque table"""

for _ in range(100):
    server_values = (
        f"vm_aws_{random.randint(1, 1000)}",
        f"192.168.10.{random.randint(1, 200)}",
        generate_servers_region(),
        generate_servers_uptodate(),
        generate_servers_os()
    )
    insert_queries.append(f"INSERT INTO public.servers (hostname, ip, region, uptodate, os) VALUES {server_values};")

    container_values = (
        generate_containers_name(),
        f"192.168.20.{random.randint(1, 200)}",
        random.choice(['Yes', 'No']),
        'Docker',
        generate_containers_image()
    )
    insert_queries.append(f"INSERT INTO public.containers (name, ip, up, engine, image) VALUES {container_values};")

    database_values = (
        generate_databases_name(),
        random.choice(['MySQL', 'PostgreSQL']),
        generate_databases_size(),
        generate_databases_uptodate()
    )
    insert_queries.append(f"INSERT INTO public.databases (name, engine, size, uptodate) VALUES {database_values};")

# Ouvre le fichier db_tables.sql en lecture
with open('db_tables.sql', 'r') as file:
    db_tables_sql = file.read()

# Concatener le contenu du fichier db_tables.sql avec les requetes creer 
init_sql = db_tables_sql + "\n" + "\n".join(insert_queries)

# Ecrire le contenu dans le fichier init.sql
with open('init.sql', 'w') as file:
    file.write(init_sql)
