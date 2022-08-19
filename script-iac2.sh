#!/bin/bash

echo "Atualizar o servidor"

apt-get update
apt-get upgrade -y

echo "Instalar o Apache2"

apt-get install apache2 -y 

echo "Instalando o Unzip"

apt-get install unzip -y

echo "Buscando o Diretório na Internet"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactar o Diretório da Internet"

unzip main.zip

echo "Abrindo o novo Diretório"

cd linux-site-dio-main

echo "Mudando de Pastas"

cp -R * /var/www/html/

echo "Procedimento Finalizado"
