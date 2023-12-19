@echo off

cls
title Math Optimizer - New

goto arquivosessenciais

:arquivosessenciais

echo Bem-vindo ao MathOptimizer Final Edition EX!
timeout -t 2 /nobreak >nul




::                                                                      admin check - credits to worb

::                                               intervalo



echo ".............................................................."
echo. .                                                             .
echo  .         Procurando pelo acesso de administrador!            .
echo. .                                                             .
echo ".............................................................."
timeout -t 3 /nobreak >nul

:: checar


>nul 2>&1 "%SYSTEMROOT%\System32\cacls.exe" "%SYSTEMROOT%\System32\config\system"

if %errorlevel% == 0 (
    echo Detectamos que voce e o Administrador do dispositivo, iniciando!
    echo ".............................................................."
    echo.
    echo                   Procurando por Atualizacoes!
    echo.
    echo ".............................................................."
    timeout -t 5 /nobreak >nul
    goto update

) else (
    echo Voce precisa executar o arquivo como administrador!
    echo.
    echo Erro : [%time%]Permissao Insuficiente!

    timeout -t 5 /nobreak >nul
    anc.bat
)


exit

::                                                                       start code - credits to worb

:update

cls

:: Screen

echo ".............................................................."
echo.
echo                   Procurando por Atualizacoes!
echo.
echo ".............................................................."
echo                 [+]Conexao a internet necessaria!
echo.

::                                                                          implementar um auto-update


::                                                       Sistema para tentar fazer o usuário ver oque é o programa

goto verify

:verify

:: código em branco por enquanto  ,  vou adicionar um system dps                                       Verificação - Sistema de Chaves

:: sem sistemas de chave, a ultima versao nao possui!
goto startmenu

:startmenu

https://dsc.gg/mathoptimizer
https://discord.gg/zju4nn
https://github.com/Worbnaticus/MathOptimizer

cls
echo.
echo.
echo.                                     
echo             "             :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::           ";
echo.
echo                                                 Math Optimizer EX - Start Menu
echo.                                                         Free edition
echo                                     .......................................................
echo.       
echo                                                  Credits to worbadill:tics#0
echo             `.                                                                                             `.
echo.
echo                                  Valeu zJu4nn pela inspiracao! ( Contato : dsc.gg/mathoptimizer )
echo                                            Servidor do zJu4nn : discord.gg/zju4nn
echo.                 "......................................................................................"  
echo.      
echo.                             Faca um ponto de restauracao para caso deseja reverter as alteracoes!                                                                                          
echo.                                                                                                                     
echo.                                                                                                                    
echo.                                 [s] Fazer um Ponto de Restauracao    [n] Ir para opcoes
echo.                                                          
echo.                                                              
echo.                 "......................................................................................" 




set /p input=: 
if /i %input% == s goto restauracao
if /i %input% == n goto menu

cls
echo [-] Opcao Invalida!
timeout -t 3 /nobreak >nul
goto startmenu

:restauracao
echo.
echo [+] Criando Ponto de Restauracao
echo.
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "SystemRestorePointCreationFrequency" /t REG_DWORD /d 1 /f >nul 2>&1
powershell -ExecutionPolicy Unrestricted -NoProfile Enable-ComputerRestore -Drive 'C:\', 'D:\', 'E:\', 'F:\', 'G:\' >nul 2>&1
powershell -ExecutionPolicy Unrestricted -NoProfile Checkpoint-Computer -Description 'Math Optimizer' >nul 2>&1

echo.
echo.                                            Pressione qualquer tecla para ir ao menu!
pause >nul                                                                 
cls  
goto startmenu

cls
:MENU

color D
cls                 

echo Ola!
echo.
echo Para continuar com a otimizacao automatica, digite "s"
echo Se nao souber oque esta fazendo, digite "n"


set /p input=: 
if /i %input% == s goto Debloat
if /i %input% == n goto erronaosei

echo Opcao invalida, reiniciando!
timeout -t 3 /nobreak >nul
goto menu

:erronaosei

echo Voce esta utilizando um otimizador automatico
echo.
echo Isto quer dizer que ao utilizar o programa, seu antivirus pode dar um alarme falso, ignore
echo Se voce nao baixou este arquivo, pode apaga-lo!
echo.
echo Ao utilizar o otimizador, alguns programas podem ser perdidos!
echo E alguns servicos podem ser finalizados no processo
echo.
echo *Nao me responsabilizo por nada que acontecer no teu pc, problema teu!*
echo.
echo MathOptimizer Final Edition R1.9 EX - 02/12/2023

:Debloat

taskkill /f /im explorer.exe

cls
echo.
echo  [+] Removendo Aplicativos Pre-Instalados
echo  Esta etapa demora mais que as outras, entao espere!
echo.
echo  [LOG] Powershell Initialized!
echo.
powershell -Command "Get-AppxPackage -Name Microsoft.PPIProjection | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.BingNews | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.GetHelp | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.Getstarted | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.Messaging | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.Microsoft3DViewer | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.MicrosoftOfficeHub | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.MicrosoftSolitaireCollection | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.NetworkSpeedTest | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.News | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.Office.Lens | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.Office.OneNote | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.Office.Sway | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.OneConnect | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.People | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.Print3D | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.RemoteDesktop | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.SkypeApp | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.Office.Todo.List | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.Whiteboard | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.WindowsAlarms | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name microsoft.windowscommunicationsapps | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.WindowsFeedbackHub | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.WindowsMaps | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.WindowsSoundRecorder | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.Xbox.TCUI | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.XboxApp | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.XboxGameOverlay | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.XboxGamingOverlay | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.XboxIdentityProvider | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.XboxSpeechToTextOverlay | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.ZuneMusic | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.ZuneVideo | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name EclipseManager | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name ActiproSoftwareLLC | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name AdobeSystemsIncorporated.AdobePhotoshopExpress | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Duolingo-LearnLanguagesforFree | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name PandoraMediaInc | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name CandyCrush | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name BubbleWitch3Saga | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Wunderlist | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Flipboard | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Twitter | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Facebook | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Spotify | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Minecraft | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Royal Revolt | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Sway | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Dolby | Remove-AppxPackage"
powershell -Command "Get-AppxPackage -Name Microsoft.YourPhone | Remove-AppxPackage"

cls
echo. 

goto :servicos

:Servicos
cls
echo.
echo [+] Desativando Servicos Inuteis
echo.
echo [LOG] Getting Registry
echo.
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\TapiSrv" /v "Start" /t REG_DWORD /d "3" /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\FontCache3.0.0.0" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WpcMonSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SEMgrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\PNRPsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\LanmanWorkstation" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WEPHOSTSVC" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\p2psvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\p2pimsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\PhoneSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\wuauserv" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Wecsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SensorDataService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SensrSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\perceptionsimulation" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\StiSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\OneSyncSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ConsentUxUserSvc" /v Start /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DevicePickerUserSvc" /v Start /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v Start /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DevicesFlowUserSvc" /v Start /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WMPNetworkSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\icssvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\DusmSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\MapsBroker" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\edgeupdate" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SensorService" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\shpamsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\svsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\MSiSCSI" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Netlogon" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\CscService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\ssh-agent" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\AppReadiness" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\tzautoupdate" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\NfsClnt" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\wisvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\defragsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\TapiSrv" /v "Start" /t REG_DWORD /d "3" /f 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\FontCache3.0.0.0" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WpcMonSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SEMgrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\PNRPsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\LanmanWorkstation" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WEPHOSTSVC" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\p2psvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\p2pimsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\PhoneSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\wuauserv" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Wecsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SensorDataService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SensrSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\perceptionsimulation" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\StiSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\OneSyncSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ConsentUxUserSvc" /v Start /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DevicePickerUserSvc" /v Start /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v Start /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DevicesFlowUserSvc" /v Start /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WMPNetworkSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\autotimesvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CaptureService" /v Start /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MessagingService" /v Start /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v Start /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v Start /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BcastDVRUserService" /v Start /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UserDataSvc" /v Start /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DeviceAssociationBrokerSvc" /v Start /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\cbdhsvc" /v Start /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\edgeupdatem" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\MicrosoftEdgeElevationService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\ALG" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\QWAVE" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\IpxlatCfgSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\icssvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\DusmSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\MapsBroker" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\edgeupdate" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SensorService" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\shpamsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\svsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\MSiSCSI" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Netlogon" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\CscService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\ssh-agent" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\AppReadiness" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\tzautoupdate" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\NfsClnt" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\wisvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\defragsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SharedRealitySvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\RetailDemo" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\lltdsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\TrkWks" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\CryptSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 /f
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d 1 /f 
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d 0 /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "DoSvc" /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d 1 /f
reg add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocation" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocationScripting" /t REG_DWORD /d 1 /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableSensors" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableWindowsLocationProvider" /t REG_DWORD /d 1 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lfsvc" /v "Start" /t REG_DWORD /d 4 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" /v "Status" /t REG_DWORD /d 0 /f 
reg add "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Permissions\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "SensorPermissionState" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "SensorPermissionState" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\DiagTrack" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\diagsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\DPS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WdiServiceHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\WdiSystemHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 00000000 /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 00000000 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\dmwappushsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\TroubleshootingSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\DsSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d 1 /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d 0 /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient" /v "CorporateSQMURL" /t REG_SZ /d "0.0.0.0" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableSoftLanding" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Assistance\Client\1.0" /v "NoActiveHelp" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\ControlSet001\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d 0 /f 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\SQMLogger" /v "Start" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\FileHistory" /v "Disabled" /t REG_DWORD /d 1 /f
reg add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 0 /f 
reg add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /t REG_DWORD /d 0 /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d 1 /f
reg add "HKCU\SOFTWARE\Policies\Microsoft\Assistance\Client\1.0" /v "NoExplicitFeedback" /t REG_DWORD /d 1 /f
reg add "HKCU\SOFTWARE\Microsoft\MediaPlayer\Preferences" /v "UsageTracking" /t REG_DWORD /d 0 /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoUseStoreOpenWith" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\FrameServer" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FontCache" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\InstallService" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\OSRSS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\sedsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SENS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TabletInputService" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Themes" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\EpicOnlineServices" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GoogleChromeElevationService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\gupdate" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Origin Client Service" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Origin Web Helper Service" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\gupdatem" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Steam Client Service" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v PreventDeviceMetadataFromNetwork /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v DontOfferThroughWUAU /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\SQMLogger" /v "Start" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "00000004" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\diagsvc" /v "Start" /t REG_DWORD /d "00000004" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DPS" /v "Start" /t REG_DWORD /d "00000004" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d "00000004" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /v "Start" /t REG_DWORD /d "00000004" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WdiSystemHost" /v "Start" /t REG_DWORD /d "00000004" /f

echo [LOG] Getting BCEDIT

bcdedit /set disabledynamictick yes
bcdedit /deletevalue useplatformclock
bcdedit /set useplatformtick yes

cls
echo.

cls
goto ram

:RAM
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingCombining" /t REG_DWORD /d "1" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
cls

echo [+] Otimizando a Ram
echo.
echo [LOG] Low-Ram mode enabled!


reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "68764420" /f
goto WindowsConfigs

:WindowsConfigs
cls
echo.
echo [+] Otimizando Configuracoes do Windows
echo.
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" /v "SyncPolicy" /t REG_DWORD /d 00000005 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "Enabled" /t REG_DWORD /d 00000000 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /v "Enabled" /t REG_DWORD /d 00000000 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "Enabled" /t REG_DWORD /d 00000000 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "Enabled" /t REG_DWORD /d 00000000 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "Enabled" /t REG_DWORD /d 00000000 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d 00000000 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d 00000000 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d 00000000 /f
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d 00000000 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d 00000000 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d 00000001 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d 00000001 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 00000002 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "DirectXUserGlobalSettings" /t REG_SZ /d "VRROptimizeEnable=0;" /f
reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "0" /f
reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "0" /f
reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "0" /f
reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "0" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d 00000000 /f
reg add "HKEY_CURRENT_USER\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 00000001 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /t REG_DWORD /d 00000000 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338393Enabled" /t REG_DWORD /d 00000000 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353694Enabled" /t REG_DWORD /d 00000000 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353696Enabled" /t REG_DWORD /d 00000000 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" /v "HasAccepted" /t REG_DWORD /d 00000000 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 00000000 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d 00000001 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d 00000001 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d 00000000 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "ShowedToastAtLevel" /t REG_DWORD /d 00000001 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 00000000 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 00000000 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\EventTranscriptKey" /v "EnableEventTranscript" /t REG_DWORD /d 00000000 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 00000000 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /t REG_BINARY /d "-" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d 00000000 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d 00000000 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d 00000001 /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d 00000000 /f

cls
goto WinUpdate


:WinUpdate
cls
echo.
echo [+] Desativando o Windows Update
echo Para reativar, veja um video no youtube!
echo.
echo Se voce utilizar a Microsoft Store, ative os updates novamente.

echo.
taskkill -F -FI "IMAGENAME eq SystemSettings.exe"
net stop wuauserv
net stop UsoSvc
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "SetDisableUXWUAccess" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
gpupdate /force
rd s q "C:\Windows\SoftwareDistribution"
md "C:\Windows\SoftwareDistribution"
net start wuauserv
net start UsoSvc

goto Periferi


:Periferi
cls
echo.
echo [+] Otimizando Mouse e Teclado
echo.
powershell -command "Reg.exe add 'HKU\.DEFAULT\Control Panel\Desktop' /v 'ForegroundLockTimeout' /t REG_DWORD /d '0' /f"
powershell -command "Reg.exe add 'HKU\.DEFAULT\Control Panel\Desktop' /v 'MenuShowDelay' /t REG_SZ /d '0' /f"
powershell -command "Reg.exe add 'HKU\.DEFAULT\Control Panel\Desktop' /v 'MouseWheelRouting' /t REG_DWORD /d '0' /f"
powershell -command "Reg.exe add 'HKU\.DEFAULT\Control Panel\Mouse' /v 'Beep' /t REG_SZ /d 'No' /f"
powershell -command "Reg.exe add 'HKU\.DEFAULT\Control Panel\Mouse' /v 'ExtendedSounds' /t REG_SZ /d 'No' /f"
powershell -command "Reg.exe add 'HKU\.DEFAULT\Control Panel\Sound' /v 'Beep' /t REG_SZ /d 'no' /f"
powershell -command "Reg.exe add 'HKU\.DEFAULT\Control Panel\Sound' /v 'ExtendedSounds' /t REG_SZ /d 'no' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Mouse' /v 'ActiveWindowTracking' /t REG_DWORD /d '0' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Mouse' /v 'Beep' /t REG_SZ /d 'No' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Mouse' /v 'DoubleClickHeight' /t REG_SZ /d '4' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Mouse' /v 'DoubleClickSpeed' /t REG_SZ /d '500' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Mouse' /v 'DoubleClickWidth' /t REG_SZ /d '4' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Mouse' /v 'ExtendedSounds' /t REG_SZ /d 'No' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Mouse' /v 'MouseHoverHeight' /t REG_SZ /d '4' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Mouse' /v 'MouseHoverWidth' /t REG_SZ /d '4' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Mouse' /v 'MouseSensitivity' /t REG_SZ /d '10' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Mouse' /v 'MouseSpeed' /t REG_SZ /d '0' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Mouse' /v 'MouseThreshold1' /t REG_SZ /d '0' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Mouse' /v 'MouseThreshold2' /t REG_SZ /d '0' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Mouse' /v 'MouseTrails' /t REG_SZ /d '0' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Mouse' /v 'SmoothMouseXCurve' /t REG_BINARY /d '0000000000000000c0cc0c0000000000809919000000000040662600000000000033330000000000' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Mouse' /v 'SmoothMouseYCurve' /t REG_BINARY /d '0000000000000000000038000000000000007000000000000000a800000000000000e00000000000' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Mouse' /v 'SnapToDefaultButton' /t REG_SZ /d '0' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Mouse' /v 'SwapMouseButtons' /t REG_SZ /d '0' /f"
powershell -command "Reg.exe add 'HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed' /v 'CursorSensitivity' /t REG_DWORD /d '10000' /f"
powershell -command "Reg.exe add 'HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed' /v 'CursorUpdateInterval' /t REG_DWORD /d '1' /f"
powershell -command "Reg.exe add 'HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed' /v 'IRRemoteNavigationDelta' /t REG_DWORD /d '1' /f"
powershell -command "Reg.exe add 'HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism' /v 'AttractionRectInsetInDIPS' /t REG_DWORD /d '5' /f"
powershell -command "Reg.exe add 'HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism' /v 'DistanceThresholdInDIPS' /t REG_DWORD /d '40' /f"
powershell -command "Reg.exe add 'HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism' /v 'MagnetismDelayInMilliseconds' /t REG_DWORD /d '50' /f"
powershell -command "Reg.exe add 'HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism' /v 'MagnetismUpdateIntervalInMilliseconds' /t REG_DWORD /d '16' /f"
powershell -command "Reg.exe add 'HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorMagnetism' /v 'VelocityInDIPSPerSecond' /t REG_DWORD /d '360' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Mouse' /v 'MouseHoverTime' /t REG_SZ /d '8' /f"
powershell -command "Reg.exe add 'HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters' /v 'ThreadPriority' /t REG_DWORD /d '31' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Accessibility\MouseKeys' /v 'Flags' /t REG_SZ /d '0' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Accessibility\StickyKeys' /v 'Flags' /t REG_SZ /d '0' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Accessibility\Keyboard Response' /v 'Flags' /t REG_SZ /d '0' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Accessibility\ToggleKeys' /v 'Flags' /t REG_SZ /d '0' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Accessibility\Keyboard Response' /v 'Flags' /t REG_DWORD /d '0' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Keyboard' /v 'KeyboardDelay' /t REG_SZ /d '0' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Keyboard' /v 'InitialKeyboardIndicators' /t REG_SZ /d '0' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Keyboard' /v 'KeyboardSpeed' /t REG_SZ /d '31' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Accessibility\Keyboard Response' /v 'DelayBeforeAcceptance' /t REG_SZ /d '0' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Accessibility\Keyboard Response' /v 'Last BounceKey Setting' /t REG_DWORD /d '0' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Accessibility\Keyboard Response' /v 'Last Valid Delay' /t REG_DWORD /d '0' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Accessibility\Keyboard Response' /v 'Last Valid Repeat' /t REG_DWORD /d '0' /f"
powershell -command "Reg.exe add 'HKCU\Control Panel\Accessibility\Keyboard Response' /v 'Last Valid Wait' /t REG_DWORD /d '0' /f"
powershell -command "Reg.exe add 'HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters' /v 'ThreadPriority' /t REG_DWORD /d '31' /f"

cls
goto GPU

:GPU
cls
echo.
echo [+] Otimizando a GPU
echo.
powershell -command "reg query 'HKLM\System\CurrentControlSet\Control\GraphicsDrivers' /v 'HwSchMode'; reg add 'HKLM\System\CurrentControlSet\Control\GraphicsDrivers' /v 'HwSchMode' /t Reg_DWORD /d '2' /f"
for /f %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class" /v "VgaCompatible" /s ^| findstr "HKEY"') do powershell -command "reg add '%%a' /v 'KMD_EnableGDIAcceleration' /t Reg_DWORD /d '1' /f"
powershell -command "reg add 'HKCU\Software\Microsoft\GameBar' /v 'AllowAutoGameMode' /t Reg_DWORD /d '1' /f"
powershell -command "reg add 'HKCU\Software\Microsoft\GameBar' /v 'AutoGameModeEnabled' /t Reg_DWORD /d '1' /f"
powershell -command "reg add 'HKCU\System\GameConfigStore' /v 'GameDVR_Enabled' /t REG_DWORD /d '0' /f"
powershell -command "reg add 'HKCU\System\GameConfigStore' /v 'GameDVR_FSEBehaviorMode' /t REG_DWORD /d '2' /f"
powershell -command "reg add 'HKCU\System\GameConfigStore' /v 'GameDVR_FSEBehavior' /t REG_DWORD /d '2' /f"
powershell -command "reg add 'HKCU\System\GameConfigStore' /v 'GameDVR_HonorUserFSEBehaviorMode' /t REG_DWORD /d '1' /f"
powershell -command "reg add 'HKCU\System\GameConfigStore' /v 'GameDVR_DXGIHonorFSEWindowsCompatible' /t REG_DWORD /d '1' /f"
powershell -command "reg add 'HKCU\System\GameConfigStore' /v 'GameDVR_EFSEFeatureFlags' /t REG_DWORD /d '0' /f"
powershell -command "reg add 'HKCU\System\GameConfigStore' /v 'GameDVR_DSEBehavior' /t REG_DWORD /d '2' /f"
powershell -command "reg add 'HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv' /v 'Start' /t Reg_DWORD /d '4' /f"
powershell -command "reg add 'HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr' /v 'Start' /t Reg_DWORD /d '4' /f"
powershell -command "reg add 'HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler' /v 'EnablePreemption' /t Reg_DWORD /d '0' /f"

cls
    
goto Win32

:Win32
cls

echo [+] Trocando Winpriority


goto FPS

:FPS
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "16" /f

cls

cls
goto lixo

:Lixo
cls
echo.
echo [+] Limpando Lixo do PC
echo.
del *.log /a /s /q /f
del /s /f /q c:\windows\temp\*.*
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
ipconfig /flushdns
net stop wuauserv
net stop UsoSvc
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution
RD /S /Q %temp%
MKDIR %temp%
takeown /f "%temp%" /r /d y
takeown /f "C:\Windows\Temp" /r /d y
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp
takeown /f "C:\Windows\Temp" /r /d y
takeown /f %temp% /r /d y

cls
echo. 
goto site


:site
cls
Echo.
Echo Redirecionando...
start https://dsc.gg/mathoptimizer
echo.

goto reopenexe

:reopenexe




rem AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

cls

set "autoexecuter=https://raw.githubusercontent.com/Worbnaticus/MathOptimizer/main/MathOptimizer_AutoStart.bat"
set "LocalFolder=%USERPROFILE%\MathOptimizer"
set "LocalFile=%LocalFolder%\MathOptimizer_AutoStart.bat"

echo Criando a pasta MathOptimizer...
mkdir "%LocalFolder%"

echo [+] Baixando o MathOptimizer AutoCleaner!
curl -o "%LocalFile%" "%autoexecuter%"

if %errorlevel% neq 0 (
    echo Houve um problema ao baixar o arquivo. Inicie a otimizacao novamente para finalizar!
    echo Conexao a internet necessaria!
    explorer.exe
    pause
    exit /b 1
)

rem AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

set "lampdx=https://raw.githubusercontent.com/Worbnaticus/MathOptimizer/main/mathoptimizer.png"
set "dexfile=%LocalFolder%\mathoptimizer.png"

curl -o "%LocalFile%" "%GitHubURL%"

if %errorlevel% neq 0 (
    echo Houve um problema ao baixar o wallpaper, ative a internet!
    pause
    exit /b 1
)

echo [LOG] Modificando o registro para definir o wallpaper baixado...
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d %dexfile% /f

echo [+] Atualizando o papel de parede...
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
echo.
cls


rem AAEAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAA

set "startallbackprogram=https://github.com/Worbnaticus/MathOptimizer/raw/main/StartAllBack.v3.4.2.exe"
set "startallname=%LocalFolder%\StartAllBack.v3.4.2.exe"

echo [+] Baixando o StartAllBack!

bitsadmin /transfer "DownloadJob" "%startallbackprogram%" "startallname"

if %errorlevel% neq 0 (
    echo Houve um problema ao baixar o StartAllBack, ative a internet!
    pause
    exit /b 1
)

echo Executando o StartAllBack!

call %LocalFolder%\StartAllBack.v3.4.2.exe /S

echo Executando o arquivo... AutoExec by Worbadillitics / Autocleaner!
call "%LocalFile%"


echo.
cls

echo Baixando arquivos necessarios, tempo estimado de 30 - 60 segundos!
timeout -t 60 /nobreak >nul

goto final


:: Inspiration : idk, just for time pass (worb)

:: MathObfuscate=1.0
:: if obfuscate
:: const
::  obfuscate=True
:: else
::  obfuscate=False
:: end

:: MathOptimizerOFID=finaltest


:final
cls
echo Otimizacao finalizada com sucesso!
echo [+] Reiniciando o computador em 5 minutos...
echo.
echo.
echo Obrigado por utilizar o MathOptimizer.
echo Estou iniciando minha carreira nova de estudos
echo entao, isto era so um passatempo!
echo.
echo E isso, qualquer dia este optimizer pode ficar fora do ar, entao compartilhe!
shutdown -r -t 300

::menustartoptimized

StartAllBack.v3.4.2.exe /S

timeout 27 /nobreak >nul

exit