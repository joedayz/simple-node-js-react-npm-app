# PowerShell script to terminate the "npm start" process using its PID

Write-Host 'The following command terminates the "npm start" process using its PID'
Write-Host '(written to ".pidfile"), all of which were conducted when "deliver.sh"'
Write-Host 'was executed.'

# Habilitar salida detallada
$VerbosePreference = "Continue"

# Leer el PID del archivo .pidfile
if (Test-Path ".pidfile") {
    $pid = Get-Content ".pidfile" -Raw
    Write-Verbose "Stopping process with PID: $pid"

    # Terminar el proceso si existe
    Stop-Process -Id $pid -Force -ErrorAction SilentlyContinue

    # Eliminar el archivo .pidfile
    Remove-Item ".pidfile" -Force
    Write-Host "Process $pid stopped and .pidfile removed."
} else {
    Write-Host "No .pidfile found. Process may not be running."
}