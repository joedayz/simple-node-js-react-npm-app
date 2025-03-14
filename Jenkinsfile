pipeline {

    agent any

    tools {
        nodejs 'NodeJS'
    }

    stages {
        stage('Build') {
            steps{
                powershell 'npm install'
            }

        }

        stage('Test') {
            steps{
                powershell 'npm test'
            }

        }

        
        stage('Deliver') {
            steps{
                powershell './jenkins/scripts/deliver.ps1'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                powershell './jenkins/scripts/kill.ps1'
            }

        }
    }

}