import json
from fastapi import FastAPI


app = FastAPI()


def read_json(name:str) -> list:
    """Read a json file and returns data

    Arguments:
        name: Name of the json file to open
    """    
    
    try:
        with open(f"data/{name}.json", "r") as file:
            data = json.load(file)
        return data

    except FileNotFoundError as error:
        print("Fichier introuvable :", error)


SERVERS         = read_json("servers")
CONTAINERS      = read_json("containers")
CLUSTERS        = read_json("servers")
APPLICATIONS    = read_json("servers")


@app.get("/servers")
def servers() -> list:
    """List all servers"""

    return SERVERS


@app.get("/server/{hostname}")
def read_server(hostname: str) -> list:
    """Get details about one given server.

    Arguments:
        hostname: Server's name.
    """

    return [server for server in SERVERS if server["hostname"] == hostname]


@app.get("/clusters")
def clusters() -> list:
    """List all servers"""

    return CLUSTERS


@app.get("/cluster/{cluster_id}")
def read_cluster(cluster:str) -> dict:
    """Get details about one given cluster.

    Arguments:
        cluster: Cluster's id.
    """

    return [{"cluster_id": "cluster_01"}]


@app.get("/applications")
def applications() -> dict:
    """List all applications"""

    return CLUSTERS


@app.get("/application/{name}")
def read_application(name:str) -> dict:
    """Get details about one given application.

    Arguments:
        name: Application's name.
    """

    response = {"name": "app de foo"}
    return response


@app.get("/containers")
def containers() -> list:
    """List all containers"""

    return CONTAINERS


@app.get("container/{name}")
def read_container(name:str) -> dict:
    """Get details about one given container.

    Arguments:
        name: Container's name.
    """

    response = {"name": "dck01", "image": "nginx"}
    return response
