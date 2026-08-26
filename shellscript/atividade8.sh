#!/bin/bash
Data_atual=$(date +%Y-%m-%d)
for Arquivo in *.png; do
	[ -e "$Arquivo" ]|| continue
	mv "$Arquivo" "${Data_atual}-${Arquivo}"
done
echo "Arquivo .png renomeados com sucesso."
