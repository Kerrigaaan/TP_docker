FAIRE LES MODIFICATION DANS FICHIER connect.php

$host = "gestion-mysql8"; pour la version 8.3
$host = "gestion-produits-mysql"; pour la version sql5.7 et php5

COMMANDS DOCKERS:

docker network create pont

docker build -t gestion-produits-php .
docker build -t gestion-produits-mysql -f DockerfileSql .


docker run -d --name gestion-produits-mysql --network pont -p 3306:3306 gestion-produits-mysql
docker run -d -p 8080:80 --name gestion-produits-php --network pont --link gestion-produits-mysql:mysql gestion-produits-php

docker-compose up -d -f docker-compose



version 8.3 sql et php


docker build -t gestion-php8 -f Dockerfile_8 .
docker build -t gestion-mysql8 -f DockerfileSql_8 .

docker run -d --name gestion-mysql8 --network pont -p 3306:3306 gestion-mysql8
docker run -d -p 8080:80 --name gestion-php8 --network pont --link gestion-mysql8:mysql gestion-php8


docker-compose up -d -f docker-compose_8.3
