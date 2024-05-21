#!/bin/bash

echo "Informe o nome do diretório que você deseja efetuar o backup: "
read dorigem

echo "Onde você deseja salvar o backup: "
read ddestino

echo "Informe o nome do backup: "
read bnome

if [ -e $dorigem ]; then
 echo "Iniciando o Backup...."
 tar -czf $ddestino/$bnome.tar.gz -C $dorigem .
 echo "Backup realizado..."
else
echo "O diretório de origem não existe!!!!!"
fi
