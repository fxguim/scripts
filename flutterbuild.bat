:: Guima Coders - flutterbuild.bat
:: Flutter clean , pub e build
:: Copyright 2020 F�bio Guimar�es
:: MIT License
@echo off
echo "clean ..."
call flutter.bat clean
echo "pub get ..."
call flutter.bat pub get
echo "build ..."
call flutter.bat packages pub run build_runner build --delete-conflicting-outputs