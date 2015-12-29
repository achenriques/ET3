#!/bin/bash

#Script para linux de sincronizaci�n de repositorios 
#por Mart�n V�zquez

#INSTRUCCIONES
#Para que este script sea funcional, debemos haber
#seguido los pasos descritos en el siguiente enlace
#https://help.github.com/articles/fork-a-repo/

#En la linea indicada escribimos la direcci�n
#donde hemos clonado nuestro repositorio
#la m�a est� ah� como ejemplo
#NOTA:El nombre del repositorio ser� siempre ET3

echo ACTUALIZANDO EL REPOSITORIO ET3
#Cambiar aqui------------------------------
cd /var/www/html/ET3
#------------------------------------------
git fetch upstream
echo ---x---x---x---x---x---x---x---x---
git checkout master
echo ---x---x---x---x---x---x---x---x---
git merge upstream/master
echo -------------DONE------------------

