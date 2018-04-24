pipeline {
  agent none
  stages {
    stage('build-docker') {
      agent {
        dockerfile {
          filename 'Dockerfile'
          label 'lu:latest'
        }
      }
      steps {
        sh 'docker build . -t lu:latest'
      }
    }
    stage('deploy') {
      steps {
        sh 'echo \'deploying demo\''
        sh 'docker run -d -p 8888:3000 lu:latest'
      }
    }
  }
}