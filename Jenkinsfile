pipeline {
  agent any
  stages {
    stage('Test') {
      environment {
        GITNAME = 'reptation'
      }
      steps {
        sh '''ls $WORKSPACE

; echo $GITNAME'''
      }
    }
  }
}