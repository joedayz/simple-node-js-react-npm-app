@echo off
echo The following "npm" command builds your Node.js/React application for production...
call npm run build

echo The following "npm" command runs your Node.js/React application in development mode...
start /B npm start
timeout /T 1 /NOBREAK
for /f "tokens=2 delims==" %%I in ('wmic process where "name='node.exe'" get ProcessId /value') do set PID=%%I
echo %PID% > .pidfile

echo Now...
echo Visit http://localhost:3000 to see your Node.js/React application in action.
