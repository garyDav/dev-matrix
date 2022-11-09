## Configuración LAMP
# Por si tienen servicios de mysql ya corriendo en su SO

```
# Restore MySQL Dump
mysql -u [user] -p [database_name] < [filename].sql
mysql -u root -p donbosco_donbosco < donbosco_donbosco.sql

sudo systemctl stop mysql
sudo apt remove --purge mysql-server mysql-client mysql-common
sudo apt install netstat
sudo netstat -tupln
sudo kill -9 {pid}

# 
SELECT Actions.Date, Actions.Message, Type.TypeName
FROM Actions
    LEFT JOIN Type 
        ON Type.TypeID = Actions.FK_TypeID;

# Docker-compose LAMP
#https://github.com/harshalone/docker-compose-lamp
MYSQL_USER=root
MYSQL_PASSWORD=tiger
MYSQL_DATABASE=default

## Comandos:
docker-compose up -d
docker-compose down
docker-compose exec webserver bash
docker ps
docker exec -i -t 7601db75f112 /bin/bash
docker cp /home/gary/coder/backup/donbosco_donbosco.sql 70ed873136dc:/tmp/

docker-compose logs -f nodejs
docker-compose exec nodejs bash

## Restore DB con docker-compose
docker cp /home/gary/coder/backup/donbosco_donbosco19-04all.sql lamp-database:/tmp/
cd /home/gary/coder/lamp
docker-compose exec database bash
mysql -u docker -p # password docker
show databases;
DROP DATABASE donbosco_donbosco;
CREATE DATABASE donbosco_donbosco;
exit;
cd /tmp # Ingresamos a la carpeta donde se encuentra nuestro backup
mysql -u root -p donbosco_donbosco < donbosco_donbosco19-04all.sql # password tiger


#DONBOSCO:
convertir a null los campos de fecha: kardex padres reguistro_nacimiento 

## Configurar DOCKER-LAMP: Para Restaurar la DB Agregar:
command: mysqld --max_allowed_packet=300M # En docker-compose.yml -> database -> Después de environment:

### Configurar DOCKER-LAMP
Copiar en: bin/php74/Dockerfile
```
docker-compose exec app composer install
```docker
# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Create system user to run Composer and Artisan Commands
# RUN useradd -G www-data,root -u $uid -d /home/$user $user
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user
```

### Correr la database
docker cp /home/gary/coder/backup/donbosco_donbosco8-04all.sql lamp-database:/tmp/ 
docker exec -i -t lamp-database /bin/bash

```mysql
mysql -u root -p # pass: tiger
GRANT ALL ON donbosco_donbosco.* TO 'docker'@'%';
```

### Asignar permisos del usuario PHP a nuestras aplicaciones
```bash
sudo usermod -a -G www-data $USER
sudo chgrp www-data -R ~/coder/lamp/www
sudo chmod g+rwxs -R ~/coder/lamp/www
```

```
Laravel 7 requires the following php modules

php-zip
php-mysql
php-mcrypt
php-xml
php-mbstring
sudo apt install libapache2-mod-php7.2 php7.2-mcrypt php7.2-mbstring php7.2-xmlrpc php7.2-soap php7.2-gd php7.2-xml php7.2-cli php7.2-zip php7.2-mysql

sudo systemctl restart apache2.service

sudo a2enmod rewrite
sudo systemctl restart apache2

# bug, error: coneccion mysql
CREATE USER 'alvaro'@'localhost' IDENTIFIED BY 'd0n*sucr3';
SHOW VARIABLES LIKE 'validate_password%';
SET GLOBAL validate_password.mixed_case_count=0;
GRANT ALL PRIVILEGES ON * . * TO 'alvaro'@'localhost';
FLUSH PRIVILEGES;
alter user 'alvaro'@'localhost' identified with mysql_native_password by 'd0n*sucr3';

# Install MySQL
sudo apt install mysql-server
sudo mysql_secure_installation
sudo mysql

CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON * . * TO 'newuser'@'localhost';
FLUSH PRIVILEGES;

SHOW VARIABLES LIKE 'validate_password%';
```
