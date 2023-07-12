import uvicorn
import psycopg2
from fastapi import FastAPI
from typing import List
from datetime import date
from pydantic import BaseModel


app = FastAPI()


class DatabaseClient:
    def __init__(self, dbname, user, password, host, port):
        self.dbname = dbname
        self.user = user
        self.password = password
        self.host = host
        self.port = port
        self.conn = None

    def connect(self):
        self.conn = psycopg2.connect(
            dbname=self.dbname,
            user=self.user,
            password=self.password,
            host=self.host,
            port=self.port
        )

    def disconnect(self):
        if self.conn:
            self.conn.close()

    def execute_query(self, query):
        if not self.conn:
            self.connect()

        cursor = self.conn.cursor()
        cursor.execute(query)
        results = cursor.fetchall()
        cursor.close()

        return results
    

class Server(BaseModel):
    hostname: str
    ip: str
    region: str
    uptodate: date
    os: str
    
class Container(BaseModel):
    name: str
    ip: str
    up: bool
    engine: str
    image: str

class Database(BaseModel):
    name: str
    engine: str
    size: int
    uptodate: date
    
    
db = DatabaseClient(
    dbname="infrastructure",
    user="postgres",
    password="example", #A CHANGER
    host="postgres",
    port="5432" #A CHANGER
)

"""

Call des servers

"""

@app.get("/servers", response_model=List[Server])
def get_servers():
    try:
        query = "SELECT * FROM public.servers;"
        results = db.execute_query(query)

        servers = []
        for row in results:
            server = Server(
                hostname=row[0],
                ip=row[1],
                region=row[2],
                uptodate=row[3],
                os=row[4]
            )
            servers.append(server)
        return servers
    except:
        servers = "error"


@app.get("/servers/hostname", response_model=List[str])
def get_server_hostnames():
    query = "SELECT hostname FROM public.servers;"
    results = db.execute_query(query)

    hostnames = [row[0] for row in results]
    return hostnames

@app.get("/servers/ip", response_model=List[str])
def get_server_ips():
    query = "SELECT ip FROM public.servers;"
    results = db.execute_query(query)

    ips = [row[0] for row in results]
    return ips

@app.get("/servers/region", response_model=List[str])
def get_server_regions():
    query = "SELECT region FROM public.servers;"
    results = db.execute_query(query)

    regions = [row[0] for row in results]
    return regions

@app.get("/servers/uptodate", response_model=List[date])
def get_server_uptodates():
    query = "SELECT uptodate FROM public.servers;"
    results = db.execute_query(query)

    uptodates = [row[0] for row in results]
    return uptodates

@app.get("/servers/os", response_model=List[str])
def get_server_os():
    query = "SELECT os FROM public.servers;"
    results = db.execute_query(query)

    os_list = [row[0] for row in results]
    return os_list




"""

Call des containers

"""


@app.get("/containers", response_model=List[Container])
def get_containers():
    try:
        query = "SELECT * FROM public.containers;"
        results = db.execute_query(query)

        containers = []
        for row in results:
            container = Container(
                name=row[0],
                ip=row[1],
                up=row[2],
                engine=row[3],
                image=row[4]
            )
            containers.append(container)
        return containers
    except:
        containers = "error"


@app.get("/containers/names", response_model=List[str])
def get_container_names():
    query = "SELECT name FROM public.containers;"
    results = db.execute_query(query)

    names = [row[0] for row in results]
    return names

@app.get("/containers/ips", response_model=List[str])
def get_container_ips():
    query = "SELECT ip FROM public.containers;"
    results = db.execute_query(query)

    ips = [row[0] for row in results]
    return ips

@app.get("/containers/up", response_model=List[bool])
def get_container_up():
    query = "SELECT up FROM public.containers;"
    results = db.execute_query(query)

    up_values = [row[0] for row in results]
    return up_values

@app.get("/containers/engines", response_model=List[str])
def get_container_engines():
    query = "SELECT engine FROM public.containers;"
    results = db.execute_query(query)

    engines = [row[0] for row in results]
    return engines

@app.get("/containers/images", response_model=List[str])
def get_container_images():
    query = "SELECT image FROM public.containers;"
    results = db.execute_query(query)

    images = [row[0] for row in results]
    return images



"""

Call des databases

"""

@app.get("/databases", response_model=List[Database])
def get_databases():
    try:
        query = "SELECT * FROM public.databases;"
        results = db.execute_query(query)

        databases = []
        for row in results:
            database = Database(
                name=row[0],
                engine=row[1],
                size=row[2],
                uptodate=row[3]
            )
            databases.append(database)
        return databases
    except:
        databases = "error"
        return databases


@app.get("/databases/names", response_model=List[str])
def get_database_names():
    query = "SELECT name FROM public.databases;"
    results = db.execute_query(query)

    names = [row[0] for row in results]
    return names

@app.get("/databases/engines", response_model=List[str])
def get_database_engines():
    query = "SELECT engine FROM public.databases;"
    results = db.execute_query(query)

    engines = [row[0] for row in results]
    return engines

@app.get("/databases/sizes", response_model=List[int])
def get_database_sizes():
    query = "SELECT size FROM public.databases;"
    results = db.execute_query(query)

    sizes = [row[0] for row in results]
    return sizes

@app.get("/databases/uptodates", response_model=List[date])
def get_database_uptodates():
    query = "SELECT uptodate FROM public.databases;"
    results = db.execute_query(query)

    uptodates = [row[0] for row in results]
    return uptodates

