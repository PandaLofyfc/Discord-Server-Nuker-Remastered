@echo off
title Bem-vindo ao Lofy Nuke Remastered
color 0A

:: Exibição de boas-vindas
echo.
echo Bem-vindo ao Lofy Nuke Remastered!
echo Este e o seu amigo fofinho no mundo digital.
echo.
echo Vamos iniciar o download dos modulos!
echo.
ping -n 2 127.0.0.1 > nul

:: Instalação de Dependências
echo Instalando as fofuras necessarias...
echo.
if exist node_modules\ (
  echo Dependencias ja instaladas.
  echo Você pode iniciar o bot no diretório "src".
  goto :runBot
) else (
  call npm install
  if %errorlevel%==0 (
    echo Instalação das fofuras bem-sucedida!
    echo.
  ) else (
    echo Ops! Algo deu errado na instalação das fofuras.
    echo Verifique sua conexão com a internet e tente novamente.
    pause
    exit
  )
)

:: Iniciar o Bot
:runBot
echo Iniciando o bot fofinho...
echo.
node seu_script.js
