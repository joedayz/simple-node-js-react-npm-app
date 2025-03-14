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
                powershell './jenkins/scripts/test.ps1'
            }

        }
    }

}