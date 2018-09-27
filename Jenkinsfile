pipeline {
  agent any
  stages {
    stage('Build') {
      agent any
      environment {
        GITNAME = 'reptation'
      }
      steps {
        sh '''echo $GITNAME



'''
        sh 'ls $WORKSPACE'
        sh 'mkdir -p /var/www/thebirdtree.com'
        sh 'cp "$WORKSPACE"/*.html /var/www/thebirdtree.com'
        sh 'docker build -t nginx-test-img .'
        sh 'docker run --name nginx-test -d -p 8000:80 nginx-test-img'
      }
    }
    stage('Test') {
      agent any
      steps {
        sh 'curl http://127.0.0.1:8000'
        sh '#mkdir -p server-config'
        sh '#mkdir -p /var/www/thebirdtree.com'
        sh '#cp "$WORKSPACE"/thebirdtree.com.conf server-config/'
        sh '#cp -r $WORKSPACE/*.html staging-files/'
        sh 'ls /var/www/thebirdtree.com'
      }
    }
  }
}