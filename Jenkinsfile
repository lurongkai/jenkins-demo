pipeline {
  agent {
    docker {
      image 'node'
    }

  }
  stages {
    stage('restore') {
      parallel {
        stage('restore') {
          steps {
            sh 'npm install --registry=https://registry.npm.taobao.org'
          }
        }
        stage('demo') {
          steps {
            echo 'hello jenkins'
          }
        }
      }
    }
    stage('build-docker') {
      agent { dockerfile true }
      steps {
        sh 'docker build . -t lu:latest'
      }
    }
    stage('deploy') {
      agent none
      steps {
        sh 'echo \'deploying demo\''
        sh 'docker run -d lu:latest'
      }
    }
  }
}