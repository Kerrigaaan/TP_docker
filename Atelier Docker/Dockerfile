# Utilisez l'image PHP officielle
FROM php:5-apache

# Copiez les fichiers de l'application dans le conteneur
COPY www/ /var/www/html/

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Assurez-vous que le dossier d'uploads est accessible en écriture
RUN chmod -R 777 /var/www/html/uploads
