@echo off
echo The following "npm" command (if executed) installs the "cross-env" dependency...
echo See https://docs.npmjs.com/cli/install for more details.
echo See https://stackoverflow.com/questions/18875674 for a detailed explanation.

:: Activar modo verboso (simulación de set -x)
echo Running: npm install --save-dev cross-env
rem npm install --save-dev cross-env

echo.
echo The following "npm" command tests your Node.js/React application...
echo This command actually invokes the test runner Jest.
echo Running: npm test

:: Ejecutar pruebas
npm test
