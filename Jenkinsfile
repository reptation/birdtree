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
        sh 'ls $WORKSPACE'
      }
    }
    stage('Staging') {
      steps {
        sh '''


docker run -d -p 8000:80 -v $WORKSPACE:/usr/share/nginx/html/ nginx'''
      }
    }
  }
}