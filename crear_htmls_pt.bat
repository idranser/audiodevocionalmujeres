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
    echo ^<html lang="pt"^>
    echo ^<head^>
    echo ^<meta charset="UTF-8"^> 
    echo ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
    echo ^<title^>Devocional diário para mulheres^</title^>
    echo ^</head^>
    echo ^<body^>
    echo ^<h4^>Ouça o devocional de hoje:^</h4^>
    REM Se agrega "pt" antes de la extension .mp3
    echo ^<audio controls controlsList="nodownload" src="!day!!month!!year!pt.mp3" type="audio/mpeg"^>^</audio^>
    echo ^</body^>
    echo ^</html^>
    ) > !day!!month!!year!pt.html
)
REM Cambiar de 30 a 31 o viceversa para reflejar los días del mes:
echo 31 archivos HTML creados con el formato !day!!month!!year!pt.html
pause