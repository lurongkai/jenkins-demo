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
            sh 'npm install'
          }
        }
        stage('demo') {
          steps {
            echo 'hello jenkins'
          }
        }
      }
    }
    stage('artifacts') {
      steps {
        archiveArtifacts(artifacts: 'jenkins-demo', onlyIfSuccessful: true)
      }
    }
    stage('deploy') {
      steps {
        sh 'echo \'deploying demo\''
      }
    }
  }
}