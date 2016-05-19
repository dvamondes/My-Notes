# Configurar o keep alive do SSH

## Criar um arquivo com o nome "config" com o seguinte conteúdo:

ServerAliveCountMax 60

ServerAliveInterval 50

## Mover o arquivo para a pasta de configuração do ssh:

mv config ~/.ssh
