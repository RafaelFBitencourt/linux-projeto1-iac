#!/bin/bash

echo " Iniciando script de configurações!! "
echo " Criando Diretórios "

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo " Diretórios criados!! "
echo " Criando Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo " Grupos criados!! "
echo " Criando Usuários... "

useradd carlos -m -s /bin/bash -p $(openssl passwd  senha1) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd  senha1) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd  senha1) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd  senha1) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd  senha1) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd  senha1) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd  senha1) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd  senha1) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd  senha1) -G GRP_SEC

echo " Usuários criados e atribuidos a seus grupos!! "

echo " Aplicando permissções de diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico 

echo " Configurações finalizadas!!! "
