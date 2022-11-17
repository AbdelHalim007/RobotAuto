node {
  stage('Run Robot Tests') {
    checkout scm
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