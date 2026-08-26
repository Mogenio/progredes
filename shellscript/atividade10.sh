#!/bin/bash
IP=$1

if ping -c 1 -w 1"$IP" &> /dev/null; then
	echo "O endereço $IP está online."
else
	echo "O endereço $IP está offline."
fi
