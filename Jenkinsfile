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


docker run -d -p 8000:8000 -v $WORKSPACE:/var/www/html -d nginx'''
      }
    }
  }
}