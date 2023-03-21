#!/bin/bash

echo "Creating directories..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating group users"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating group users"

useradd theylon -m -s /bin/bash -p $(openssl passwd -crypt Neymar1010) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Neymar1010) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Neymar1010) -G GRP_SEC

echo "Specifying directory permissions"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finish add user script"
