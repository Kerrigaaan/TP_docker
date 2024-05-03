docker build -f Dockerfile -t php .

docker build -t postgres -f DockerfilePost .

docker run -d --name postgres --network pont -p 5432:5432 postgres 

docker run -d -p 8080:80 --name gestion-produits-php --network pont --link gestion-produits-mysql:mysql gestion-produits-php

docker-compose up -d 