:: Guima Coders - gitupd.bat
:: Atualiza um diret�rio com Git e publica no GitHub
:: Copyright 2020 F�bio Guimar�es
:: MIT License
@echo off
set MENSAGEM=%1
:: adiciona/remove/modifica todos os arquivos para o git
call git add -A
:: comita
call git commit -m %1
:: publica o repositorio sobreescrevendo
call git push origin master -f