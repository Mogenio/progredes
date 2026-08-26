#!/bin/bash

for Caminho in "$@"; do
	if [ -f "$Caminho" ]; then
		echo "--- $Caminho é um arquivo comum. ---"
	elif [ -d "$Caminho" ]; then
		echo "--- $Caminho é um diretório."
	else
		echo "--- $Caminho é outro tipo de arquivo. ---"
	fi
	ls -le "$Caminho"
	echo ""
done 
