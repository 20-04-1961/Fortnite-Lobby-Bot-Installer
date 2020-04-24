@echo off
color 2
title Fortnite Lobby Bot installer by DarkShark96_

::Update system - Coming soon...
::UPDATE
::ECHO Checking updates...
::set currentver=v1.4
::IF %errorlevel% EQU 1 goto MAIN
::ECHO You are running the latest version
::timeout 5
::call updater.bat
::cls

::Main code
:MAIN
color 2
cls
ECHO .                         Welcome to the program setup.
ECHO .                           Program by DarkShark96_
ECHO .
ECHO.                      Supported version of Fortnite: 12.41
ECHO .                            Current version: 1.5
ECHO .
ECHO .                Subscribe to my YouTube channel for more video.
ECHO .
ECHO .        Credits to xMistt for the source code and inspiration of this bot!
ECHO .
ECHO .                Do you want to install the Fortnite lobby bot?
ECHO .          Type Y to install, C to cancel, U to uninstall and X to exit
ECHO .

set /p ion=. Type your answer:
if "%ion%"=="Y" goto Install
if "%ion%"=="C" goto Cancel
if "%ion%"=="U" goto Uninstall
if "%ion%"=="D" goto Developer
if "%ion%"=="d" goto Debug
if "%ion%"=="X" goto Close

::Exit setup
:Cancel
color E
ECHO Ok
ECHO If you want to install the Lobby Bot start me again and type Y
ECHO Goodbye ;)
PAUSE
exit

::Remove FNLB Files
:Uninstall
title Lobby bot uninstaller by DarkShark96_
color 4
ECHO Uninstalling lobby bot...
cd C:\FNLB
rename "Fortnite Lobby Bot Files" "Fortnite-Lobby-Bot-Files"
RD /S /Q "C:\FNLB\Fortnite-Lobby-Bot-Files"
cd C:\
RD /S /Q "C:\FNLB"
cd %USERPROFILE%\Desktop
del "%USERPROFILE%\Desktop\Start-BOT.bat"
del "%USERPROFILE%\Desktop\Lobby-Bot-Commands.txt"

ECHO .
ECHO .
ECHO Lobby Bot removed from your computer
PAUSE
exit

::Installation
:install
title Fortnite Lobby Bot installer by DarkShark96_
ECHO Downloading files...
cd C:/
mkdir FNLB
cd C:/FNLB

::python
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://www.python.org/ftp/python/3.8.2/python-3.8.2-amd64.exe', 'python-3.8.2-amd64.exe')"
powershell -Command "Invoke-WebRequest https://www.python.org/ftp/python/3.8.2/python-3.8.2-amd64.exe -OutFile python-3.8.2-amd64.exe"
start python-3.8.2-amd64.exe
PAUSE
ECHO Python installed

::Lobby Bot Files
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://www.dl.dropboxusercontent.com/s/tcinn518ixx4vyx/FNLBfiles.zip?dl=0', 'FNLBfiles.zip')"
powershell -Command "Invoke-WebRequest http://www.dl.dropboxusercontent.com/s/tcinn518ixx4vyx/FNLBfiles.zip?dl=0 -OutFile FNLBfiles.zip"
cd C:\FNLB
powershell Expand-Archive FNLBfiles.zip -DestinationPath C:/FNLB
ECHO Bot Files Downloaded

::Packages installer
ECHO Installing packages

cd C:/FNLB/Fortnite Lobby Bot Files
py -3 -m pip install -U -r requirements.txt
ECHO.
ECHO.
ECHO.
ECHO Packages installation completed

::config file editor
ECHO Now you need to change email and password from the file
start config.json
PAUSE

::Bot starter
cd C:\FNLB
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://www.dl.dropboxusercontent.com/s/w7ijl018slehltz/Start-BOT.bat?dl=0', 'Start-BOT.bat')"
powershell -Command "Invoke-WebRequest http://www.dl.dropboxusercontent.com/s/w7ijl018slehltz/Start-BOT.bat?dl=0 -OutFile Start-BOT.bat"
MOVE "C:\FNLB\Start-BOT.bat" "%USERPROFILE%\Desktop"
ECHO.
ECHO.
ECHO Now you can start your bot with Start-BOT.bat file on your Desktop!
PAUSE

::Bot commands
cd C:\FNLB
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://https://www.dl.dropboxusercontent.com/s/v1w1d8pm042patg/Lobby%20Bot%20Commands.txt?dl=0', 'Lobby Bot Commands.txt')"
powershell -Command "Invoke-WebRequest http://https://www.dl.dropboxusercontent.com/s/v1w1d8pm042patg/Lobby%20Bot%20Commands.txt?dl=0 -OutFile Lobby Bot Commands.txt"
timeout 3
rename "Lobby Bot Commands.txt" "Lobby-Bot-Commands.txt"
MOVE "C:\FNLB\Lobby-Bot-Commands.txt" "%USERPROFILE%\Desktop"
ECHO Lobby Bot Commands list created on your Desktop
PAUSE
exit


:Developer
cls
ECHO Developer mode coming soon...
PAUSE
cls
goto MAIN

:Debug
title DEBUG MODE - Lobby bot installer by DarkShark96_
color E
cls
ECHO . Welcome in the Debug mode
ECHO .
ECHO . Commands:
ECHO . Type P to install Python
ECHO . Type F to install Bot Files
ECHO . Type p to install the Packages {REQUIRE BOT FILES}
ECHO . Type C to edit config file {REQUIRE BOT FILES}
ECHO . Type B to add the bot starter in your desktop {REQUIRE BOT FILES}
ECHO . Type c to add bot commands in your desktop {REQUIRE BOT FILES}
ECHO . Type b to exit debug mode
ECHO . Type X to exit
ECHO .
set /p ion=. Type your answer:
if "%ion%"=="P" goto Python-D
if "%ion%"=="F" goto BotFiles-D
if "%ion%"=="p" goto packages-D
if "%ion%"=="C" goto config-D
if "%ion%"=="B" goto BotStart-D
if "%ion%"=="c" goto BotCommands-D
if "%ion%"=="b" goto MAIN
if "%ion%"=="X" goto Close

cd C:\
mkdir FNLB-Debug
cd C:\FNLB-Debug

:Python-D
cls
cd C:\
mkdir FNLB-Debug
cd C:\FNLB-Debug
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://www.python.org/ftp/python/3.8.2/python-3.8.2-amd64.exe', 'python-3.8.2-amd64.exe')"
powershell -Command "Invoke-WebRequest https://www.python.org/ftp/python/3.8.2/python-3.8.2-amd64.exe -OutFile python-3.8.2-amd64.exe"
start python-3.8.2-amd64.exe
PAUSE
ECHO Python installed
cls
goto :Debug

:BotFiles-D
cls
cd C:\
mkdir FNLB-Debug
cd C:\FNLB-Debug
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://www.dl.dropboxusercontent.com/s/tcinn518ixx4vyx/FNLBfiles.zip?dl=0', 'FNLBfiles.zip')"
powershell -Command "Invoke-WebRequest http://www.dl.dropboxusercontent.com/s/tcinn518ixx4vyx/FNLBfiles.zip?dl=0 -OutFile FNLBfiles.zip"
powershell Expand-Archive "C:\FNLB-Debug\FNLBfiles.zip" -DestinationPath "C:\FNLB-Debug"
ECHO Bot Files Downloaded
PAUSE
cls
goto :DEBUG

:packages-D
cls
cd C:\
mkdir FNLB-Debug
cd C:\FNLB-Debug
ECHO Installing packages

cd C:/FNLB-Debug/Fortnite Lobby Bot Files
py -3 -m pip install -U -r requirements.txt
ECHO.
ECHO.
ECHO.
ECHO Packages installation completed
PAUSE
cls
goto :DEBUG

:config-D
cls
cd C:\
mkdir FNLB-Debug
cd C:\FNLB-Debug

ECHO Now you need to change email and password from the file
start config.json
PAUSE
cls
goto :DEBUG

:BotStart-D
cls
cd C:\
mkdir FNLB-Debug
cd C:\FNLB-Debug

powershell -Command "(New-Object Net.WebClient).DownloadFile('http://www.dl.dropboxusercontent.com/s/w7ijl018slehltz/Start-BOT.bat?dl=0', 'Start-BOT.bat')"
powershell -Command "Invoke-WebRequest http://www.dl.dropboxusercontent.com/s/w7ijl018slehltz/Start-BOT.bat?dl=0 -OutFile Start-BOT.bat"
MOVE "C:\FNLB-Debug\Start-BOT.bat" "%USERPROFILE%\Desktop"
ECHO.
ECHO.
ECHO Now you can start your bot with Start-BOT.bat file on your Desktop!
PAUSE
cls
goto :DEBUG

:BotCommands-D
cls
cd C:\
mkdir FNLB-Debug
cd C:\FNLB-Debug

powershell -Command "(New-Object Net.WebClient).DownloadFile('http://https://www.dl.dropboxusercontent.com/s/v1w1d8pm042patg/Lobby%20Bot%20Commands.txt?dl=0', 'Lobby Bot Commands.txt')"
powershell -Command "Invoke-WebRequest http://https://www.dl.dropboxusercontent.com/s/v1w1d8pm042patg/Lobby%20Bot%20Commands.txt?dl=0 -OutFile Lobby Bot Commands.txt"
timeout 3
rename "Lobby Bot Commands.txt" "Lobby-Bot-Commands.txt"
MOVE "C:\FNLB-Debug\Lobby-Bot-Commands.txt" "%USERPROFILE%\Desktop"
ECHO Lobby Bot Commands list created on your Desktop
PAUSE
cls
goto :DEBUG

::Exit code
:Close
exit
