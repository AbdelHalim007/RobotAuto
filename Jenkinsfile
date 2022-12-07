pipeline {
    agent any

    environment {
        imageName = "myphpapp"
        registryCredentials = "nexus"
        registry = "192.168.1.101:8086"
        dockerImage = ''
    }

    stages {


     stage('UI') {
     steps{
     bat 'start cmd.exe /c cd C:\\Users\\abdel\\PycharmProjects\\RobotFramework /c start chrome'

        }
      }






     stage('Tagging project image to Nexus') {
     steps{
         script {
             dir('C:/Users/abdel/PycharmProjects/RobotFramework')  {
             docker.withRegistry('http://'+ registry, registryCredentials ) {
                bat 'docker tag start7 192.168.1.101:8086/start7'

          }}
        }
      }
    }

  stage('Uploading project image to Nexus') {
     steps{
         script {
             dir('C:/Users/abdel/PycharmProjects/RobotFramework')  {
             docker.withRegistry('http://'+ registry, registryCredentials ) {

                bat 'docker push 192.168.1.101:8086/start7'
          }}
        }
      }
    }


    stage("Sonar Analysis Phase") {
            steps {
                dir('C:/Users/abdel/PycharmProjects') {
                bat 'sonar-scanner.bat -D"sonar.projectKey=MazadRobot" -D"sonar.sources=." -D"sonar.host.url=http://localhost:9000" -D"sonar.login=sqp_0c7b76ab6f51aee5ed436ed45bd7cd51899ff365"'
            }}}

stage("Docker Image ") {
            steps {
                dir('C:/Users/abdel/PycharmProjects/RobotFramework') {
                bat 'docker build .  -t start'
            }}}



        stage('Send Slack notification') {
            steps {
                echo 'Deploying....'
            }
            }

        stage("Email") {
            steps {
              emailext attachLog: true, body: '', subject: 'Jenkins Pipeline Report', to: 'abdlhalimbelkadhi@gmail.com'
            }
        }
    }
}