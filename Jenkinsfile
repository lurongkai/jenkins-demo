pipeline {
  agent any
  stages{
    stage('build-image') {
      steps {
        script {
          sh 'echo \'build docker images\''
          docker.build("lu:${env.BUILD_NUMBER}")
        }
      }
    }
    stage('deploy') {
      steps {
        sh 'echo \'deploy docker image to port 8888\''
        input message: 'Finished using? (Click "Proceed" to continue)'
        sh "docker run -d -p 8888:3000 lu:${env.BUILD_NUMBER}"
      }
    }
  }
}