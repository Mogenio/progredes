#!/bin/bash

caminho="/home/gabriel/git/progredes/shellscript"

if [ -e "$caminho" ]; then
	echo "O caminho foi encontrado: $caminho"

	if [ -w "$caminho" ]; then
		echo " Você tem permissão para editar este arquivo."
	else
		echo "Você não tem permissão para editar este arquivo. (Você precisa usar 'sudo' ou alterar as permissões)"
	fi
else
	echo "O arquivo não existe ou o '$caminho está incorreto'."
fi
