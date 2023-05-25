import random
import json


envs = ["prod", "hprod", "dev"]

hostnames = []

for srv in range(1,501):
	env = random.choice(envs)
	hostname = f"SRV{random.randint(100,999)}UX{env.upper()}"
	
	uptodate = random.choice([True, False])
	uptime = random.randint(150, 5200)
	
	
	
	server = {
	
	"hostname" : hostname,
	"env" : env,
	"uptodate" : uptodate,
	"uptime" : uptime,
	
	}
	
	hostnames.append(server)

with open("servers.json", "w") as file:
	json.dump(hostnames, file,indent=4)
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	