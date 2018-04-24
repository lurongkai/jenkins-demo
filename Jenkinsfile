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
        sh 'echo \'hello\''
        sh 'echo \'hello2\''
        sh 'echo \'hello3\''
        sh 'echo \'deploying demo\''
        sh "docker run -d -p 8888:3000 lu:${env.BUILD_NUMBER}"
      }
    }
  }
}