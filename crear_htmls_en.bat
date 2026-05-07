@echo off
setlocal enabledelayedexpansion

set year=26
REM Cambiar el mes:
set month=05

REM Cambiar de 30 a 31 o viceversa segun la cantidad de dias del mes:
for /L %%d in (1,1,31) do (
    if %%d LSS 10 (
        set day=0%%d
    ) else (
        set day=%%d
    )

    (
    echo ^<!DOCTYPE html^>
    echo ^<html lang="en"^>
    echo ^<head^>
    echo ^<meta charset="UTF-8"^> 
    echo ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
    echo ^<title^>Daily devotional for women^</title^>
    echo ^</head^>
    echo ^<body^>
    echo ^<h4^>Listen to today's devotional:^</h4^>
    REM Se agrega "en" antes de la extension .mp3
    echo ^<audio controls controlsList="nodownload" src="!day!!month!!year!en.mp3" type="audio/mpeg"^>^</audio^>
    echo ^</body^>
    echo ^</html^>
    ) > !day!!month!!year!en.html
)

REM Mensaje de confirmacion
echo 31 archivos HTML creados con el formato !day!!month!!year!en.html
pause