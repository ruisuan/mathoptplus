@echo off
setlocal enabledelayedexpansion

set "userFolder=%USERPROFILE%"
set "autoexecFolder=%userFolder%\autoexec"
set "authFile=%autoexecFolder%\dep.1"
set "authFileObfuscated=%autoexecFolder%\dep.2"

:: Verifica se a pasta autoexec existe, se nao, cria
if not exist "%autoexecFolder%" mkdir "%autoexecFolder%"

:: Verifica se o arquivo de autenticação ja existe na pasta autoexec
if not exist "%authFile%" (
    echo Criando arquivo de autenticação...

    rem Gera uma chave aleatoria
    set "authKey="
    for /l %%A in (1, 1, 32) do (
        set /a "char = !random! %% 94 + 33"
        for %%B in (!char!) do set "authKey=!authKey!%%~B"
    )

    echo !authKey! > "%authFile%"
    echo Arquivo de autenticacao criado com sucesso.
) else (
    echo Arquivo de autenticacao já existe na pasta autoexec. Pulando a criacao.
)

:: Ofusca o do do arquivo
set "conteudo_ofuscado="
for /l %%i in (0,1,255) do (
    set /a "char=%%i"
    set "conteudo_ofuscado=!conteudo_ofuscado!!char!"
)

:: Salva o conteudo ofuscado no arquivo de autenticação ofuscado
echo !conteudo_ofuscado! > "%authFileObfuscated%"
echo Arquivo de autenticacao ofuscado criado com sucesso!

:: Lê a chave de autenticação do arquivo
set /p authKey=<"%authFile"

:: Lógica de autenticação (substitua por sua lógica específica)
echo Digite a chave de autenticacao (aleatoria, varia de pc pra pc) :
set /p userAuthKey=
if "%userAuthKey%"=="%authKey%" (
    echo Autenticacao bem-sucedida!
    goto inicializacaodoscript
) else (
    echo Falha na autenticacao. Verifique a chave.
    pause
    exit
)