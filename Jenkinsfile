pipeline {
    agent any

    environment {
        imageName = "myphpapp"
        registryCredentials = "nexus"
        registry = "192.168.1.101:8086"
        dockerImage = ''
    }

    stages {

     stage('Running Robot UI Tests') {
     steps{
     bat 'start cmd.exe /c C:\\Users\\abdel\\OneDrive\\Bureau\\automation.bat'
          sleep time: 60000, unit: 'MILLISECONDS'
}
      }

      stage("SonarQube Quality Tests") {
            steps {
                dir('C:/Users/abdel/PycharmProjects') {
                bat 'sonar-scanner.bat -D"sonar.projectKey=MazadRobot" -D"sonar.sources=." -D"sonar.host.url=http://localhost:9000" -D"sonar.login=sqp_0c7b76ab6f51aee5ed436ed45bd7cd51899ff365"'
            }}}


      stage("Building Docker Image ") {
            steps {
                dir('C:/Users/abdel/PycharmProjects/RobotFramework') {
                bat 'docker build .  -t start'
                sleep time: 184985, unit: 'MILLISECONDS'
            }}}



     stage('Tagging Project Image') {
     steps{
         script {
             dir('C:/Users/abdel/PycharmProjects/RobotFramework')  {
             docker.withRegistry('http://'+ registry, registryCredentials ) {
                bat 'docker tag start7 192.168.1.101:8086/start7'

          }}
        }
      }
    }

  stage('Uploading Project image to Nexus Private Repository') {
     steps{
         script {
             dir('C:/Users/abdel/PycharmProjects/RobotFramework')  {
             docker.withRegistry('http://'+ registry, registryCredentials ) {

                bat 'docker push 192.168.1.101:8086/start7'
          }}
        }
      }
    }

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