up:
	docker-compose up -d

down:
	docker-compose down

status:
	docker ps -f "name=oldp*"

image:
	docker build . -t ssh-host

ldap-shell:
	docker exec -u root -it oldp-srv bash
