node {
  docker.build("lu:${env.BUILD_NUMBER}")
  sh 'docker run -d -p 8888:3000 Lu:${env.BUILD_NUMBER}'
}