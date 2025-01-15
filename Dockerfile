# Utiliser une image de base officielle PHP avec Apache
FROM php:8.2-apache


# Définir le répertoire de travail
WORKDIR /var/www

# Copier le projet dans le conteneur
RUN mkdir project

COPY . project

COPY vhost.config /etc/apache2/sites-enabled
# Donner les permissions nécessaires
RUN  chmod -R 777 /var/www/

# Installer les dépendances Symfony
RUN /etc/init.d/apache2 restart

EXPOSE 80


