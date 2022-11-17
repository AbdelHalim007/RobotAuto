node {
  stage('Run Robot Tests') {
    cd C:\Users\abdel\PycharmProjects\RobotFramework

python -m robot -d Test-output Automation\TestSuits\Login\invalid_login.robot.

echo Completed 

  }
  stage('SonarQube Analysis') {
    def scannerHome = tool 'SonarScanner';
    withSonarQubeEnv() {
      sh "${scannerHome}/bin/sonar-scanner}"
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