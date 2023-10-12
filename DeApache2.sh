#!/bin/bash

echo "atualizando"
apt-get update
apt-get upgrade -y

echo "instalando Apache e unip"
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando aplicacao"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-sito-dio-main
cp -R * /var/www/html/
