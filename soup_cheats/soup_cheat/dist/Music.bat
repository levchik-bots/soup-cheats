@echo off
chcp 65001 > nul

:music_loop
:: Генерация случайного числа (0 или 1) для выбора песни
set /a "track=%RANDOM% %% 2"

if %track%==0 (
    set "current_music=music.mp3"
) else (
    set "current_music=music2.mp3"
)

:: Проверка наличия папки media и плеера media.exe внутри неё
if exist "media\media.exe" (
    if exist "%current_music%" (
        echo [Музыка] Запуск: %current_music% через media.exe
        
        :: Ключ /wait останавливает выполнение ОДНОГО ЭТОГО скрипта до закрытия media.exe
        start "" /wait "media\media.exe" "%current_music%"
    ) else (
        echo [Музыка] Файл %current_music% не найден!
        timeout /t 5 > nul
    )
) else (
    echo [Музыка] Плеер media\media.exe не найден!
    timeout /t 5 > nul
)

:: Как только media.exe закрылся, этот скрипт сразу переходит к началу и запускает новый трек
goto music_loop
