node {
  stage('build-image') {
    docker.build("lu:${env.BUILD_NUMBER}")
  }
  stage('deploy') {
    sh 'echo \'deploying demo\''
    sh "docker run -d -p 8888:3000 lu:${env.BUILD_NUMBER}"
  }
}