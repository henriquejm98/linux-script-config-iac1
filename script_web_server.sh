#!/bin/bash

echo "Instalando apache..."

apt-get update
apt-get upgrade -y

apt-get install apache2 -y

echo "Instalando unzip..."

apt-get install unzip -y

echo "Baixando arquivo do site..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -P /tmp

echo "Disponibilizando o site..."

unzip /tmp/main.zip -d /tmp

cp /tmp/linux-site-dio-main/* /var/www/html -R

systemctl restart apache2

echo "Finalizado"
