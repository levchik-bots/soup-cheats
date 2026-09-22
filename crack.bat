@echo off
chcp 65001 > nul
title SOUP_CHEAT Premium Crack v2.4
mode con: cols=85 lines=30
color 0A

:menu
cls
echo =====================================================================================
echo    ████████╗██╗  ██╗███████╗    ███████╗██████╗  █████╗  ██████╗██╗  ██╗
echo    ╚══██╔══╝██║  ██║██╔════╝    ██╔════╝██╔══██╗██╔══██╗██╔════╝██║  ██║
echo       ██║   ███████║█████╗      ███████╗██████╔╝███████║██║     ███████║
echo       ██║   ██╔══██║██╔══╝      ╚════██║██╔══██╗██╔══██║██║     ██╔══██║
echo       ██║   ██║  ██║███████╗    ███████║██║  ██║██║  ██║╚██████╗██║  ██║
echo       ╚═╝   ╚═╝  ╚═╝╚══════╝    ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝
echo =====================================================================================
echo                WELCOME TO SOUP_CHEAT PREMIUM CRACK [2026 EDITION]
echo =====================================================================================
echo.

set /p username="[+] Enter your login: "
set /p password="[+] Enter your password: "

echo.
echo [!] Verifying credentials in database...
timeout /t 2 > nul
echo [+] Access granted! Welcome back, %username%.
echo [!] Initialization complete. Press any key to run exploit...
pause > nul

cls
echo =====================================================================================
echo                      SCANNING AND BYPASSING SECURITY...
echo =====================================================================================
timeout /t 1 > nul

echo [INFO] Connecting to soup_cheat servers via proxy...
timeout /t 1 > nul
echo [SUCCESS] Connection established. IP encrypted.
timeout /t 1 > nul
echo [PROCESS] Dumping soup_cheat.exe memory process...

for /L %%i in (1,1,40) do (
    echo [MEMORY] Intercepting pointer 0x00FF%%iA3BF -- Status: OK
    echo [BYPASS] Bypassing AntiCheat_Soup_v4.2... Progress: %%i%%
    echo [DEBUG] Data packet #%%i042 sent to localhost
    pathping 127.0.0.1 -q 1 -p 10 > nul
)

echo [SUCCESS] Security modules completely disabled.
echo [PROCESS] Generating premium license for %username%...
timeout /t 2 > nul

for /L %%i in (1,1,50) do (
    echo [CRACK] Patching bytes at 0x7FFF%%iE9 -- [Replaced with NOP]
    echo [INJECT] Injecting dynamic library soup_crack_v2.dll...
    pathping 127.0.0.1 -q 1 -p 5 > nul
)

cls
color 0E
echo =====================================================================================
echo                      FINALIZATION AND SERVER SYNCHRONIZATION
echo =====================================================================================
echo [INFO] Clearing logs and exploit traces...
timeout /t 2 > nul
echo [INFO] Spoofing HWID (Hardware ID)... Success.
timeout /t 2 > nul
echo [INFO] Generating local configuration files... Success.
timeout /t 1 > nul

cls
color 0A
echo =====================================================================================
echo                       CRACK SUCCESSFULLY ACTIVATED!
echo =====================================================================================
echo.
echo    [+] Target Soft: soup_cheat
echo    [+] Subscription: Lifetime (Permanent)
echo    [+] Active User: %username%
echo.
echo =====================================================================================
echo Script finished. Press any key to exit.
pause > nul
