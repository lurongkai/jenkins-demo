pipeline {
  agent any
  stages {
    stage('restore') {
      parallel {
        stage('restore') {
          steps {
            nodejs() {
              sh 'npm install'
            }
          }
        }
        stage('demo') {
          steps {
            echo 'hello jenkins'
          }
        }
      }
    }
    stage('') {
      steps {
        archiveArtifacts(artifacts: 'jenkins-demo', onlyIfSuccessful: true)
      }
    }
    stage('deploy') {
      steps {
        sh 'echo \'deploying\''
      }
    }
  }
}