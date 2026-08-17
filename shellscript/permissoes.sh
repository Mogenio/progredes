#!/bin/bash
#Desafio Prático Integrado
#Cenário: A empresa precisa de uma pasta compartilhada chamada
#/projeto/backend para equipe de desenvolvimento.

#:
#Crie o grupo devs.
#Crie usuários lucas e juliana, ambos pertencentes ao grupo devs.
#Crie o diretório /projetos/backend.
#Configure um pasta /projetos/backend para que:
#O dono seja o root e o grupo seja devs.
#Os membros do grupo devs têm acesso total (leitura, escrita e execução/navegação).
#Os usuários fora do grupo não têm nenhum acesso (nem leitura, nem navegação).
#Qualquer arquivo criado dentro da pasta por lucas ou juliana pertencerá automaticamente ao grupo devs(dica: SGID).


eco "Criando o grupo devs"
adicionar desenvolvedores ao grupo>/dev/null2>&1
eco "Criando o usuário lucas"
useradd -M lucas -g devs -p"Lucas"-e"2026-08-31"-c"Lucas de Souza" >/dev/null2>&1
eco "Criando o usuário juliana"
useradd -M juliana -g devs -p"Juliana"-e"2026-08-31"c-"Juliana Silva" >/dev/null2>&1
eco "Criando o diretório do projeto /projetos/backend"
mkdir -p /projetos/backend
eco "Alterando o proprietário do projeto backend para root:devs"
chown -R root:devs /projetos/backend
eco "Permitindo acesso total ao grupo devs para o projeto backend"
chmod -R g+rwx /projetos/backend
chmod g+s /projetos/backend
ecp "Bloqueio total a usuários que não pertecem ao grupo devs"
chmod -R o-rwx /projetos/backend
