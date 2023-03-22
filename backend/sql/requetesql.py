import psycopg2 
import random
import os 
import csv
from faker import Faker
from dotenv import load_dotenv
load_dotenv()

USERNAME = os.getenv('USERNAME')
PASSWORD = os.getenv('PASSWORD')
DATABASE = os.getenv('DATABASE')
HOST = os.getenv('HOST')

def connect_db() -> None:

    """

    """

    try:

        conn = psycopg2.connect(f"host={HOST} dbname={DATABASE} user={USERNAME} password={PASSWORD}")
    
    except Exception as error:

        print(error)

    return conn

def create_data() -> None:

    """
    """

    fake = Faker()
    data_names = []
    data_section = []
    data_classe = [] 
    noms = []
    prenoms = []

    for names in range(600):
       
        data_names.append(fake.name())

    for name in data_names:
    
        split_name = name.split()
        first_name = split_name[0]
        last_name = split_name[1]
        prenoms.append(first_name)
        noms.append(last_name)

    classes = ["Classe 1", "Classe 2", "Classe 3", "Classe 4", "Classe 5", "Classe 6", "Classe 7", "Classe 8", "Classe 9", "Classe 10", "Classe 11", "Classe 12", "Classe 13", "Classe 14", "Classe 15", "Classe 16", "Classe 17", "Classe 18", "Classe 19", "Classe 20"]
    
    for classe in classes:
        for item in range(20):

            data_classe.append(classe)


    section = ["Informatique", "Communication", "Vente"]

    for sections in section:
        for item in range(200):

            data_section.append(sections)

    try:

        with open("/data/csv/datastudent.csv", "w", newline='') as file:
        
            fieldnames = ['first_name', 'last_name', 'classe']
 
            writer = csv.DictWriter(file, fieldnames=fieldnames)

            for row in zip(prenoms, noms, data_classe):
          
                writer.writerow({fieldnames[i]: value for i, value in enumerate(row)})
    
    except Exception as error:

        print(error)

def insert_student() -> None:

    """

    """

    try:

        conn = connect_db()
        cursor = conn.cursor()

        with open('/data/csv/datastudent.csv', 'r') as file:

            reader = csv.reader(file)
            ###next(reader) # Permet de skip l'header si ncessaire
            for row in reader:
                cursor.execute(
                """ INSERT INTO "ETUDIANT" VALUES (%s, %s, %s) """,
                row
          )

            conn.commit()

    except Exception as error:

        print(error)

insert_student()
