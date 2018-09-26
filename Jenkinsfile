pipeline {
  agent any
  stages {
    stage('Test') {
      environment {
        GITNAME = 'reptation'
      }
      steps {
        sh '''echo $GITNAME



'''
      }
    }
    stage('Staging') {
      steps {
        sh '''


docker run -d -p 80:80 -v .:/var/www/html dockerfile/nginx'''
      }
    }
  }
}