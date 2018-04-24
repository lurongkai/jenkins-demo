pipeline {
  agent none
  stages {
    stage('build-docker') {
      agent {
        dockerfile {
          additionalBuildArgs '-t lu:latest'
        }
      }
      steps {
        
      }
    }
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