# Raspberry Pi

## Primeros pasos

### Formatear

Programas:
* balenaEtcher

### Actualizar el SO

```bash
sudo apt update
sudo apt upgrade
```

### Instalar Screenfetch para ver información de mi SO

```bash
sudo apt install screenfetch
screenfetch
```

### Utilizar la placa de forma remota

* Placa
* tarjeta SD
* Alimentación
* Ethernet / Wifi

>Importante: debemos de conocer qué dirección IP nos pone el router: `ip add`
>Si queremos ver la ip de forma remota podemos utilizar el programa: 'nmap' (Windows/Linux) ó 'Fing' (Android)
>con 'nmap' sería: `nmap -sn 192.168.1.0/24 -oG -` ejecutar más de una vez en caso de que no reconozca.

### IP address

Desde otro equipo escanear direcciones IP con `nmap -sn 192.168.1.0/24`

```bash
hostname -I
ip r | grep default
sudo nano /etc/resolv.conf

sudo nano /etc/dhcpcd.conf
---
interface eth0
static ip_address=192.168.1.200/24
static routers=192.168.1.1
static domain_name_servers=200.87.100.10 200.87.100.40
---
```

### Conección por SSH

Crear un archivo `ssh` __Vacio__ en la SD /boot/ssh

```bash
ssh pi@192.168.1.9
password: gary
```

### Configuraciones básicas

```bash
sudo raspi-config
```

#### Ocupar todo el espacio de la memoria SD:

__6 Advanced Options  Configure advanced settings__ --> __A1 Expand Filesystem  Ensures that all of the SD card is available__

### Instalar VNC

```bash
// Estando conectado por SSH
sudo apt install -y realvnc-vnc-server realvnc-vnc-viewer
vncserver
// Nos devuelve la IP y el puerto para poder conectarnos desde nuestro cliente (Viewer)
```

__Descargamos VNC Viewer__ --> Archivo --> Nueva Conexión --> Insertar IP:Port, Nombre. Nos pide el usuario y contraseña.

