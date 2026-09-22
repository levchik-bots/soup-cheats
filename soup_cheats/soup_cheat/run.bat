::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcDOHLniuOpoS7czp5vyCnmkYR+krd5/na1U/wFDLWp5VlifMlihmnMIfGHs=
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFCxRXheWAE+1EbsQ5+n//NaOr0waUfFxcYzUug==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF65
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFCxRXheWAES0A5EO4f7+086CsUYJW/IDyW5qOgRWkDuiCfQFNcQR1XtO1s4UCXs=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
chcp 65001 > nul

:: 1. Получаем путь к запущенному EXE-файлу
set "EXE_PATH=%~f0"

:: 2. Добавляем EXE в автозагрузку реестра
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "MyDistStart" /t REG_SZ /d "\"%EXE_PATH%\"" /f

if %errorlevel% equ 0 (
    echo [УСПЕХ] Программа добавлена в автозагрузку!
) else (
    echo [ОШИБКА] Не удалось добавить запись в реестр.
)

:: 3. Переходим во временную папку, куда распаковались файлы
cd /d "%~dp0"

:: 4. Проверяем наличие папки dist и запускаем start.bat из неё
if exist "dist\start.bat" (
    echo Запуск внутреннего скрипта...
    cd dist
    call start.bat
) else (
    echo [ОШИБКА] Внутренний файл dist\start.bat не найден!
    pause
)
