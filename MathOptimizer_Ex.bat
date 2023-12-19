rem Only conhost

::
if not defined IS_CONHOST (
    echo Utilizar o terminal alternativo do windows nao e recomendado, executar mesmo assim?
    pause
)

@echo off
setlocal enabledelayedexpansion

rem If you consider to donate, join dsc.gg/mathoptimizer

rem Lol, this was made by only one person and it's so good!


rem -------------------------------------------------------------


rem MathOptimizer Ex - Free Evalue - Licensed by MIT LICENSE - - -

rem 15/11/2009 Version, IoT Optimization - Made by worbadill:tics


rem -------------------------------------------------------------


rem https://github.com/Worbnaticus/ -- Site dos arquivos

rem Open-Source, qualquer informação pode ser obtida no código do arquivo!

rem trava

set "lockFile=%TEMP%\meuarquivo.lock"

set "capturarInterrupcao="
set "arquivoBatch=%~dpnx0"

for %%i in ("%TEMP%\%~nx0_*.bat") do del "%%i"
set "arquivoTrava=%TEMP%\%~nx0_temp.bat"

echo @echo off > "%arquivoTrava%"
echo del "%lockFile%" >> "%arquivoTrava%"
echo exit /b >> "%arquivoTrava%"

echo @if not defined capturarInterrupcao goto :capturarInterrupcao >> "%arquivoTrava%"
echo del "%lockFile%" >> "%arquivoTrava%"
echo exit /b >> "%arquivoTrava%"
echo :capturarInterrupcao >> "%arquivoTrava%"

call "%TEMP%\%~nx0_temp.bat"

if exist "%lockFile%" (
    echo O arquivo ja esta em execucao, aguarde!
    pause
    exit /b
)

:: Cria o arquivo de trava
echo. > "%lockFile%"



rem exec

set "userFolder=%USERPROFILE%"
set "autoexecFolder=%userFolder%\autoexec"
set "authFile=%autoexecFolder%\auth.txt"
set "authFileObfuscated=%autoexecFolder%\auth_obfuscated.txt"

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
    echo Autenticacao detectada! Iniciando Script!
    goto inicializacaodoscript
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

:inicializacaodoscript

set "ScriptName=%~nx0"
set "NewScriptName=MathOptimizer_Ex.bat"
set "StartupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

rem Tamanho da tela

mode con cols=91 lines=13

rem Resolution

if not exist "%NewScriptName%" (
    rename "%ScriptName%" "%NewScriptName%"
    color e4
    echo Abra o arquivo sem adulterar os nomes
    echo Aperte qualquer tecla para sair do MathOptimizer EX:
    echo.
    echo O criador original desse script (worbadill:tics#0) nao tolera copias sem permissoes!
    echo Executar como administrador tambem ativa isto, tente iniciar sem administrador!
    pause >nul
    exit
) else (
    goto criarinicializador
)
cls


:adulteracionesilegaulis

color e4
echo.
echo Abra o arquivo sem adulterar os nomes
echo.
echo Sistema Anti-Edicao!
pause



:criarinicializador

echo.
if not exist "%StartupFolder%\%NewScriptName%" (
    echo Feito por Luis
    cls
    copy "%NewScriptName%" "%StartupFolder%"
    cls
    goto start
) else (
    echo sem ideia nessa parte do code, mistake
    cls
    goto start
)

cls
timeout /t 1 /nobreak >nul
cls



rem divisoria

:start

cls

color 47
echo Otimizador Automatico - Feito por Luis
echo -------------------------------------------------------------------------------------
echo.
echo                                %date% , %time%
echo.
echo          ---              Iniciando a otimizacao automatica          ---              
echo.
echo            Para desativar, digite shell:startup e apague o arquivo 
echo.                             (MathOptimizer EX.bat)
echo.
echo.
echo -----------------------------------------------------------------------------------

cleanmgr /sagerun:1

del /q /s %temp%\*.* 2>nul

del /q /s C:\Windows\Prefetch\*.* 2>nul

del /q /s C:\Windows\Logs\*.* 2>nul

rd /s /q C:\$Recycle.Bin 2>nul

rem d


rem tw
echo Removendo arquivos temporarios...
del /s /q *.tmp 2>nul

echo Removendo arquivos de log...
del /s /q *.log 2>nul

echo Removendo arquivos de cache...
del /s /q *.cache 2>nul

echo Removendo arquivos de configuração temporarios...
del /s /q *.tmp 2>nul

echo Removendo arquivos de lixo eletronico...
del /s /q Thumbs.db 2>nul
del /s /q desktop.ini 2>nul

echo Removendo arquivos de registros de sistema...
del /s /q *.reg 2>nul

echo Removendo arquivos de backup do sistema...
del /s /q *.bak 2>nul

echo Removendo arquivos de cache do Windows Update...
rmdir /s /q "C:\Windows\SoftwareDistribution\Download" 2>nul

echo Removendo arquivos de relatórios de erros...
rmdir /s /q "C:\ProgramData\Microsoft\Windows\WER" 2>nul

rem Otimizacao de internet - inicio

cls
rem tw

ipconfig /flushdns
netsh winhttp reset proxy


rem Otimizacao de internet - final

rem b

cls

color a7
echo Otimizador Automatico - Feito por Luis
echo -------------------------------------------------------------------------------------
echo.
echo                                %date% , %time%
echo.
echo          ---              Limpeza automatica finalizada          ---              
echo.
echo            Para desativar, digite shell:startup e apague o arquivo 
echo.                             (MathOptimizer EX.bat)
echo.
echo.
echo -----------------------------------------------------------------------------------
echo                MathOptimizer, Evalue version, stable and safe! (BR)


timeout -t 2 /nobreak >nul

rem Aviso : Se o antivirus sinalizar esse arquivo como suspeito, remova-o, o código é aberto e você pode procurar na internet sobre como ele funciona / com o chatgpt.
rem
rem                                                              Feito por worbadill:tics#0
rem
rem - 15/11/2023
rem
rem Este arquivo serve para limpar automaticamente!

rem Parte inutilizavel do codigo:
rem e
rem f
rem Get an better obfuscator!

rem --------------------------------------------------------------------------------------------------------------------------------------------------------------------

rem Aviso : Este programa é uma cópia autorizada para somente um dispositivo, tentar inserir em outro faz com que ele se apague automaticamente, dearly : luis

del "%lockFile%"