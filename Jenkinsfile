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
        sh '#cp -r $WORKSPACE staging-files/'
        sh '''


docker run -d -p 8000:80 -v staging-files:/usr/share/nginx/html/ nginx'''
      }
    }
  }
}