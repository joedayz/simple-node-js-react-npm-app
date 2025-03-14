#!/usr/bin/env pwsh

Write-Output 'The following "npm" command (if executed) installs the "cross-env"'
Write-Output 'dependency into the local "node_modules" directory, which will ultimately'
Write-Output 'be stored in the Jenkins home directory. As described in'
Write-Output 'https://docs.npmjs.com/cli/install, the "--save-dev" flag causes the'
Write-Output '"cross-env" dependency to be installed as "devDependencies". For the'
Write-Output 'purposes of this tutorial, this flag is not important. However, when'
Write-Output 'installing this dependency, it would typically be done so using this'
Write-Output 'flag. For a comprehensive explanation about "devDependencies", see'
Write-Output 'https://stackoverflow.com/questions/18875674/whats-the-difference-between-dependencies-devdependencies-and-peerdependencies.'

# Habilitar modo detallado para mostrar los comandos ejecutados
$VerbosePreference = "Continue"

# Instalar cross-env (descomentar si es necesario)
# npm install --save-dev cross-env

Write-Output 'The following "npm" command tests that your simple Node.js/React'
Write-Output 'application renders satisfactorily. This command actually invokes the test'
Write-Output 'runner Jest (https://facebook.github.io/jest/).'

# Ejecutar pruebas
npm test
