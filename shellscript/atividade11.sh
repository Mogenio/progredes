#!/bin/bash
Arquivo_IPS=$1
Log_Online="online.log"
Log_Offline="offline.log"

> "$Log_Online"
> "$Log_Offline"

while IFS= read -r IP || [ -n "$IP" ]; do
	[ -z "$IP" ] && continue

	if ping	-c 1 -W 1 "$IP" &> /dev/null; then
		echo "O endereço $IP está online."
		echo "$IP" >> "$Log_Online"
	else
		echo "O enderelo $IP está offline."
		echo "$IP" >> "$Log_Offline"
	fi
done < "$Arquivo_IPS"

echo "Processamento concluído. Verifique os arquivos $Log_Online e $Log_Offline."
