pipeline {

    agent any

    tools {
        nodejs 'NodeJS'
    }

    stages {
        stage('Build') {
            steps{
                bat 'npm install'
            }

        }

        stage('Test') {
            steps{
                bat 'npm test'
            }

        }

        
        stage('Deliver') {
            steps{
                bat './jenkins/scripts/deliver.ps1'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                bat './jenkins/scripts/kill.ps1'
            }

        }
    }

}
