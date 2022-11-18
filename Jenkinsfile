node {
  stage('Checkout Code') {
           checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'sss', url: 'https://github.com/AbdelHalim007/RobotAuto']]])
            }
  stage('SonarQube Analysis') {
    def scannerHome = tool 'SonarScanner';
    withSonarQubeEnv() {
      sh "${scannerHome}/bin/sonar-scanner"
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