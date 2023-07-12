import argparse
import requests


parser = argparse.ArgumentParser()

parser.add_argument("url")

arg = parser.parse_args()

url = "http://" + arg.url

requetes = 1000

for index in range(requetes):

    try:

        response = requests.get(url)

        if response.status_code == 200:

            print(f"Requête effectuée.")

        else:

            print(f"Requêt échoué.")

    except Exception as error:

        print(error)
