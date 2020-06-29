:: Guima Coders - gitupd.bat
:: Atualiza um diretório com Git e publica no GitHub
:: Copyright 2020 Fábio Guimarães
:: MIT License
@echo off
set MENSAGEM=%1
:: adiciona/remove/modifica todos os arquivos para o git
call git add -A
:: comita
call git commit -m %1
:: publica o repositorio sobreescrevendo
call git push origin master -f