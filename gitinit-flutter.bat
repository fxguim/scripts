:: Guima Coders - gitinit-flutter.bat
:: Inicializa um diretório flutter com Git e configura no github
:: Copyright 2020 Fábio Guimarães
:: MIT License
@echo off
set USERNAME=%1
set REPONAME=%2
:: cria o repositorio local com [md %REPONAME%] ou [call flutter create %REPONAME%]
call flutter create %REPONAME%
:: inicia o git
cd %REPONAME%
echo "git init ..."
call git init
:: define usuario/password em windcred
call git config credential.helper wincred
echo "Configurando o .gitignore"
curl https://www.toptal.com/developers/gitignore/api/androidstudio,dart,flutter --output .gitignore
:: adiciona/remove/modifica todos os arquivos para o git
echo "git add e commit ..."
call git add -A
:: comita
call git commit -m "first commit"
:: configura o repositorio local ao remoto
echo "git remote ..."
::call git remote rm origin
call git remote add origin https://github.com/%USERNAME%/%REPONAME%.git
:: publica o repositorio
echo "git push ..."
call git push -f -u origin master