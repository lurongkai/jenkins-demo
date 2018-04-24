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
    stage('deploy') {
      steps {
        sh 'echo \'deploying demo\''
      }
    }
  }
}