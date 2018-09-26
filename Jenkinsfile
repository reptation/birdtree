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


docker run -d -p 8000:80 -v $WORKSPACE:/var/www/html nginx'''
      }
    }
  }
}