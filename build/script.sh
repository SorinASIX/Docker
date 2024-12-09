#!/bin/bash

#Mariadb espera
until mysql -h"$DB_HOST" -u"$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" -e "SELECT 1;" &>/dev/null; do
echo "Esperando..."
sleep 5
done

#Import DB
mysql -h"$DB_HOST" -u"$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" < /var/www/html/schema.sql

#Apache
apache2-foreground
