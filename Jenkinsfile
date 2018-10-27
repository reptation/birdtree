pipeline {
  agent any
  stages {
    stage('Test') {
      agent any
      environment {
        GITNAME = 'reptation'
      }
      steps {
        sh 'echo "hello jenkinsworker" > ~/hello-remote'
        sh 'ls $WORKSPACE'
      }
    }
    stage('Deploy') {
      agent {
        node {
          label 'web'
        }

      }
      steps {
        sh 'cp -r $WORKSPACE/* /var/www/classic.birdtree.us/'
      }
    }
  }
}