#!/bin/bas
while true
do

echo -e "

   1 - Adicionar usuario
   2 - Deletar usuario
   3 - Verificar usuario
   4 - sair do script

echo -n  "Escolha uma das opcoes:
resd OPT

case $OPT in
1)

   clear
   echo -n "Digite o nome do usuario:"
   useradd $USUARIO
   echo $SENHA | passwd $USUARIO --stdin
   if [ $? -eq 0 ]; then
       echo "O usuario foi adicionado  com sucesso"
else
       echo "Nao foi possivel sdicionar o usuario"
fi
;;

2)
  clear 
  echo "Digite o nome do usuario para deletar"
  read USUARIO

  echo "Deletando usuario"
  userdel #USUARIO
  if [ $? -eq 0]; then
      echo "O usuario foi deletado com sucesso"
else
      echo "Nao foi possivel deletar o usuario"
fi
;;

3)
/root/scrip-shell/criar-usuarios.sh
;;

4) 
exit
;; 

*) echo "Escolha uma opcao valida "
;;
esac

done
 


