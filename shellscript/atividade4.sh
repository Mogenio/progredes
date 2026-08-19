#!/bin/bash

Caminho=$1

if [ -f "$Caminho" ]; then
	echo "É um arquivo comum."
elif [ -d "$Caminho" ]; then
	echo "É um diretório."
else
	echo "É outro tipo de arquivo."
fi

ls -la "$Caminho"
