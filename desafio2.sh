#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando de https://github.com/OliverM1981 os arquivos da aplicação..."

cd /tmp
wget https://github.com/OliverM1981/menu-sidebar/archive/refs/heads/main.zip
unzip main.zip
cd menu-sidebar-main
cp -R * /var/www/html/

echo "Script finalizado"
