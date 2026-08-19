#!/bin/bash

echo -n "Digite o caminho de um arquivo ou diretório: " 
read Caminho

if [ -f "$Caminho" ]; then
    echo "É um arquivo comum."
elif [ -d "$Caminho" ]; then
    echo "É um diretório."
else
    echo "É outro tipo de arquivo (link, socket, block, etc)."
fi

echo "--- Listagem detalhada ---"
ls -la "$Caminho"
