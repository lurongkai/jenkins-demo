pipeline {
  agent none
  stages {
    stage('build-docker') {
      agent { dockerfile true }
      steps {
        sh 'docker build . -t lu:latest'
      }
    }
    stage('deploy') {
      steps {
        sh 'echo \'deploying demo\''
        sh 'docker run -d lu:latest'
      }
    }
  }
}