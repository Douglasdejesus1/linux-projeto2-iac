#!/bin/bash

echo "Atualizando servidor ubuntu..."
apt-get update
apt-get upgrade -y

echo "Instalando apache e unzip..."
apt install apache2 -y

apt install unzip -y

echo "Baixando site dio e configurando no apache..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/

echo "Finalizando..."
