#!/bin/bash
Diretorio=$1
Extensao=$2
Data_atual=$(date +%Y-%m-%d)

cd "$Diretorio" || exit

for Arquivo in *."$Extensao"; do
	[ -e "$Arquivo" ] || continue
	Novo_nome="${Data_atual}-${Arquivo}"
	echo "Renomeando: $Arquivo -> $Novo_nome"
	mv "$Arquivo" "$Novo_nome"
done
