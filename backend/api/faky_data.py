"""Generate random json file."""
import random
import argparse
import json
from faker import Faker


fake = Faker()

parser = argparse.ArgumentParser()
parser.add_argument("-a", "--amount", required=True)

ENV = ["prod", "hprod", "dev"]
REGION = ["paris", "london", "berlin"]


def faky_servers(amount:int) -> list:
    """Generate random list with server informations

    Arguments:
        amount: Amount of dictionnary to generate.
    """

    hostnames = []
    OS = ["windows", "linux"]

    for srv in range(0, amount + 1):
        env         = random.choice(ENV)
        hostname    = f"SRV{random.randint(100,999)}UX{env.upper()}"
        os          = random.choice(OS)
        region      = random.choice(REGION)
        uptodate    = random.choice([True, False])
        uptime      = random.randint(150, 5200)
        ipaddress   = fake.ipv4_private(address_class="a")
        domain      = fake.domain_word()
        moa         = fake.name()
        
        server = {
            "hostname":     hostname,
            "os":           os,
            "region":       region,
            "env":          env,
            "uptodate":     uptodate,
            "uptime":       uptime,
            "ipaddress":    ipaddress,
            "domain":       domain,
            "moa":          moa,
        }
        
        hostnames.append(server)

    with open("data/servers.json", "w") as file:
        json.dump(hostnames, file, indent=4)


def faky_containers(amount:int) -> list:
    """Generate random list with containers informations

    Arguments:
        amount: Amount of dictionnary to generate.
    """        

    containers = []
    ENGINES = ["docker", "containerd", "podman", "runc"]
    IMAGES = [
        "nginx", "python", "ubuntu", "grafana", "nodejs",
        "alpine", "rhel", "pgsql", "mysql", "mongodb"
    ]    

    for srv in range(0, amount + 1):
        env         = random.choice(ENV)
        image       = random.choice(IMAGES)
        hostname    = f"CNT{random.randint(100,999)}{env.upper()}{image[:2].upper()}"
        engine      = random.choice(ENGINES)
        region      = random.choice(REGION)
        up          = random.choice([True, False])
        managed     = random.choice([True, False])
        ipaddress   = fake.ipv4_private(address_class="b")
        domain      = fake.domain_word()
        moa         = fake.name()
        
        server = {
            "hostname":     hostname,
            "image":        image,
            "engine":       engine,
            "region":       region,
            "env":          env,
            "up":           up,
            "managed":      managed,
            "ipaddress":    ipaddress,
            "domain":       domain,
            "moa":          moa,
        }
        
        containers.append(server)

    with open("data/containers.json", "w") as file:
        json.dump(containers, file, indent=4)
	
if __name__ == "__main__":
    args = parser.parse_args()
    faky_servers(int(args.amount))
    faky_containers(int(args.amount))
