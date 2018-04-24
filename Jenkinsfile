pipeline {
  agent any
  stages{
    stage('build-image') {
      steps {
        script {
          docker.build("lu:${env.BUILD_NUMBER}")
        }
      }
    }
    stage('deploy') {
      steps {
        sh "docker run -d -p 8888:3000 lu:${env.BUILD_NUMBER}"
      }
    }
  }
}