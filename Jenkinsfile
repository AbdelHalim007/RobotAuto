node {
  stage('Run Robot Tests') {
    robot archiveDirName: 'robot-plugin', outputPath: 'C:\\Users\\abdel\\PycharmProjects\\RobotFramework\\Test-output', overwriteXAxisLabel: '', passThreshold: 20.0, unstableThreshold: 10.0

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