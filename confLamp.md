## Configuracipon LAMP
```
# Restore MySQL Dump
mysql -u [user] -p [database_name] < [filename].sql
mysql -u root -p donbosco_donbosco < donbosco_donbosco.sql

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

#DONBOSCO:
convertir a null los campos de fecha: kardex padres reguistro_nacimiento 

## Para Restaurar la DB Agregar:
command: mysqld --max_allowed_packet=300M # En docker-compose.yml -> database -> Después de environment:


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
