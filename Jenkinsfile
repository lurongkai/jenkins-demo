pipeline {
  agent {
    docker {
      image 'node' 
      args '-p 3000:3000'
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