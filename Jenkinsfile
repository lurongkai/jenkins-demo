node {
  stage('build-image') {
    steps {
      docker.build("lu:${env.BUILD_NUMBER}")
    }
  }
  stage('deploy') {
    steps {
      sh 'echo \'deploying demo\''
      sh 'docker run -d -p 8888:3000 Lu:${env.BUILD_NUMBER}'
    }
  }
}