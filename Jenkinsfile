pipeline {
  agent any
  stages {
    stage('Test') {
      agent any
      environment {
        GITNAME = 'reptation'
      }
      steps {
        sh '''echo $GITNAME




'''
        sh 'ls $WORKSPACE'
      }
    }
    stage('Deploy') {
      steps {
        sh 'cp -r $WORKSPACE/* /var/www/classic.birdtree.us/'
      }
    }
  }
}