@echo off
echo The following command terminates the "npm start" process using its PID
echo (written to ".pidfile"), all of which were conducted when "deliver.sh" was executed.

:: Leer el PID del archivo .pidfile
set /p PID=<.pidfile

:: Verificar si se obtuvo un PID válido
if not defined PID (
    echo ERROR: No se encontró un PID en .pidfile
    exit /b 1
)

:: Terminar el proceso
taskkill /F /PID %PID%

:: Eliminar el archivo .pidfile
del /f /q .pidfile
