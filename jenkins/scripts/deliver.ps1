#!/usr/bin/env pwsh

Write-Host 'The following "npm" command builds your Node.js/React application for'
Write-Host 'production in the local "build" directory (i.e. within the'
Write-Host '"/var/jenkins_home/workspace/simple-node-js-react-app" directory),'
Write-Host 'correctly bundles React in production mode and optimizes the build for'
Write-Host 'the best performance.'

# Habilitar salida detallada
$VerbosePreference = "Continue"

Write-Verbose "Running: npm run build"
npm run build

Write-Host 'The following "npm" command runs your Node.js/React application in'
Write-Host 'development mode and makes the application available for web browsing.'
Write-Host 'The "npm start" command runs as a background process so the pipeline continues.'
Write-Host 'It then retrieves the process ID (PID) of the process and writes it to ".pidfile".'

Write-Verbose "Running: npm start"
Start-Process -FilePath "npm" -ArgumentList "start" -NoNewWindow -PassThru | ForEach-Object {
    Start-Sleep -Seconds 1
    $_.Id | Out-File -Encoding utf8 ".pidfile"
}

Write-Host 'Now...'
Write-Host 'Visit http://localhost:3000 to see your Node.js/React application in action.'
Write-Host '(This is why you specified the "args -p 3000:3000" parameter when you'
Write-Host 'created your initial Pipeline as a Jenkinsfile.)'