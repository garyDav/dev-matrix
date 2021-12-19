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

## Agregar:
command: mysqld --max_allowed_packet=300M # En docker-compose.yml -> database -> Después de environment:

```
