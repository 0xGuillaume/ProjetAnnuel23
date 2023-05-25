import uvicorn
import psycopg2
from fastapi import FastAPI
from typing import List
from pydantic import BaseModel

app = FastAPI()


class Database:
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


class Etudiant(BaseModel):
    first_name: str
    last_name: str
    classe: str

db = Database(
    dbname="school",
    user="postgres",
    password="example",
    host="postgres",
    port="5432"
)

@app.get("/etudiants", response_model=List[Etudiant])
def get_etudiants():
    try:
        query = "select * from etudiant;"
        results = db.execute_query(query)

        etudiants = []
        for row in results:
            etudiant = Etudiant(
                first_name=row[0],
                last_name=row[1],
                classe=row[2]
            )
            etudiants.append(etudiant)
    except:
        etudiants = "error"

    return etudiants

@app.get("/etudiants/first_names", response_model=List[str])
def get_etudiants_first_names():
    query = "select first_name from etudiant;"
    results = db.execute_query(query)

    first_names = [row[0] for row in results]

    return first_names

@app.get("/etudiants/last_names", response_model=List[str])
def get_etudiants_last_names():
    query = "select last_name from etudiant;"
    results = db.execute_query(query)

    last_names = [row[0] for row in results]

    return last_names

@app.get("/etudiants/classes", response_model=List[str])
def get_etudiants_classes():
    query = "select distinct classe from etudiant;"
    results = db.execute_query(query)

    classes = [row[0] for row in results]

    return classes


if __name__ == "__main__":
   uvicorn.run(app, host="0.0.0.0", port=80) 
