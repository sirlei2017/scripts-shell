#!/bin/bash


echo "Adcionando usuarios no servidor"

for usuario in $(cat usuraios.txt);do

    USER=$(cat /etc/passwd | grep ^$usuario | cut -d: -f1)
 
    test -z $USER
    if [ $? -eq 0 ]; then
    echo "O usuario $usuario nao esta cadastrado"
    echo "Para cadastrar,precione enter"
    read    
    useradd $usuario
    echo "Usuario cadastrado com sucesso"
  else
    echo "Usuario $usuario ja cadastrado"
  fi

done 
