pipeline {
  agent {
    dockerfile {
      additionalBuildArgs '-t lu:latest'
    }
  }
  stages {
    stage('deploy') {
      agent {
        node { label 'master' }
      }
      steps {
        sh 'echo \'deploying demo\''
        sh 'docker run -d -p 8888:3000 lu:latest'
      }
    }
  }
}