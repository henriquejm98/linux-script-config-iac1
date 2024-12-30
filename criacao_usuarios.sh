#!/bin/bash

echo "Criando diretórios e grupos..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

useradd carlos -c "Carlos" -G GRP_ADM -s /bin/bash -m -p $(openssl passwd -6 senha123)
useradd maria -c "Maria" -G GRP_ADM -s /bin/bash -m -p $(openssl passwd -6 senha123)
useradd joao -c "João" -G GRP_ADM -s /bin/bash -m -p $(openssl passwd -6 senha123)

useradd debora -c "Débora" -G GRP_VEN -s /bin/bash -m -p $(openssl passwd -6 senha123)
useradd sebastiana -c "Sebastiana" -G GRP_VEN -s /bin/bash -m -p $(openssl passwd -6 senha123)
useradd roberto -c "Roberto" -G GRP_VEN -s /bin/bash -m -p $(openssl passwd -6 senha123)

useradd josefina -c "Josefina" -G GRP_SEC -s /bin/bash -m -p $(openssl passwd -6 senha123)
useradd amanda -c "Amanda" -G GRP_SEC -s /bin/bash -m -p $(openssl passwd -6 senha123)
useradd rogerio -c "Rogério" -G GRP_SEC -s /bin/bash -m -p $(openssl passwd -6 senha123)

echo "Usuários criados com sucesso!"
