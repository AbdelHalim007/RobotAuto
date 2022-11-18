node {
  stage('Checkout Code') {
           checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'sss', url: 'https://github.com/AbdelHalim007/RobotAuto']]])
            }
  stage('SonarQube Analysis') {
    def scannerHome = tool 'SonarQube';
    withSonarQubeEnv(SonarQube) {
      sh "$("SonarHome")}/bin/sonar-scanner"
      -D sonar.login=admin \
      -D sonar.password=Root3alboot \
      -D sonar.projectKey=MazadRobot \
      -D sonar.exclusions=vendor/**,resources/**,**/.java \
      -D sonar.host.url=http://http://localhost:9000/"

    }
    stage('Nexus Building artifact') {
    checkout scm
  }
  stage('Running Container') {
    checkout scm
  }
  stage('Upload image to Nexus') {
    checkout scm
  }
  stage('Send Slack Notification') {
    checkout scm
  }
  stage('Send Email') {
    checkout scm
  }
  }
}