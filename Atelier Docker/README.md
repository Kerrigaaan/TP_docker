docker network create pont

docker build -t gestion-produits-php .
docker build -t gestion-produits-mysql -f DockerfileSql .


docker run -d --name gestion-produits-mysql --network pont -p 3306:3306 gestion-produits-mysql
docker run -d -p 8080:80 --name gestion-produits-php --network pont --link gestion-produits-mysql:mysql gestion-produits-php

docker-compose up -d -f docker-compose