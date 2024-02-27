@echo off
cd %~dp0
:menu
cls
echo Selecione uma opção:
echo 1 - Comercial Servicos
echo 2 - Comex
echo 3 - Fiscal
echo 4 - Sair
echo.
set /p opcao=Escolha uma opcao e pressione Enter: 

if "%opcao%"=="1" goto ComercialServicos
if "%opcao%"=="2" goto Comex
if "%opcao%"=="3" goto Fiscal
if "%opcao%"=="4" goto fim

echo Opcao invalida
pause
goto menu

:ComercialServicos
PowerShell -ExecutionPolicy Bypass -File ".\Perfis\ComercialServicos.ps1"
goto menu

:Comex
PowerShell -ExecutionPolicy Bypass -File ".\Perfis\Comex.ps1"
timeout /t 5 /nobreak > NUL
goto menu

:Fiscal
PowerShell -ExecutionPolicy Bypass -File ".\Perfis\Fiscal.ps1"
goto menu

:fim