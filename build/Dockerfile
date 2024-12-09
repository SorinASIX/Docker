# Usar la imagen oficial de PHP con Apache
FROM php:8.3.14-apache

RUN apt-get update && apt-get install -y mariadb-client libmariadb-dev && docker-php-ext-install mysqli

# Copy
COPY . /var/www/html

# Establecer el directorio de trabajo
WORKDIR /var/www/html


# Permisos para Apache y PHP
RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

# Copiar y configurar el script de inicialización
COPY script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh

# Ejecuciíon al arrancar
CMD ["bash", "/usr/local/bin/script.sh"]

