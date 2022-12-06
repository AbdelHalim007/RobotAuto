pipeline {
    agent any

    stages {

    stage("Sonar Analysis Phase") {
            steps {
                dir('C:/Users/abdel/PycharmProjects') {
                bat 'sonar-scanner.bat -D"sonar.projectKey=MazadRobot" -D"sonar.sources=." -D"sonar.host.url=http://localhost:9000" -D"sonar.login=sqp_0c7b76ab6f51aee5ed436ed45bd7cd51899ff365"'
            }}}

        stage('Run Robot code') {
            steps {
                echo 'Building..'
            }
        }
        stage('Sonar Analysis phase') {
            steps {
                echo 'Testing..'
            }
        }

        stage('Running container') {
            steps {
                echo 'Deploying....'
            }
            }
        stage('Build Docker Image') {
            steps {
                echo 'Deploying....'
            }
            }
        stage('Send Slack notification') {
            steps {
                echo 'Deploying....'
            }
            }
        stage('Send email') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}