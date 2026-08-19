#!/bin/bash

Diretorio=$1

if [ -d "$Diretorio" ]; then

	QDT=$(find "$Diretorio" -maxdepth 1 -type f | xc -l)
	echo "O $Diretorio tem $QDT arquivos."
else
	echo "O argumento $Diretorio não é diretório!"
fi
