@echo off
echo The following "npm" command builds your Node.js/React application for production...
npm run build

echo The following "npm" command runs your Node.js/React application in development mode...
:: Ejecutar en una nueva ventana
start "React App" cmd /c npm start

:: Esperar 1 segundo antes de continuar
timeout /t 1 >nul

:: Guardar el PID del proceso en .pidfile (opcional, ya que Windows maneja procesos de forma diferente)
echo %ERRORLEVEL% > .pidfile

echo Now...
echo Visit http://localhost:3000 to see your Node.js/React application in action.
