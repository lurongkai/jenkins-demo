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
        sh 'echo \'docker build . -t lu:latest\''
      }
    }
  }
  post { 
    success { 
      sh 'docker run -d -p 8888:3000 lu:latest'
    }
  }
}