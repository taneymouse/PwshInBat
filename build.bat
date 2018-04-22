@echo off

SET NAME=

echo %DIRNAME%
copy template.txt %NAME%.bat
copy %NAME%.ps1 tmp.txt
start /min /wait cmd /c chcp 65001 ^& cmd /u /c type tmp.txt ^> $$$ ^& cmd /c type $$$ ^> tmp.txt ^& del $$$
copy /b %NAME%.bat + tmp.txt %NAME%.bat
del tmp.txt
