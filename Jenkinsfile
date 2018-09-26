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
        sh 'ls $WORKSPACE/'
        sh 'mkdir -p server-config'
        sh 'mkdir -p /var/www/thebirdtree.com'
        sh 'cp "$WORKSPACE"/thebirdtree.com.conf server-config/'
        sh 'cp -r $WORKSPACE/*.html staging-files/'
        sh 'ls staging-files'
        sh '''


docker run --name nginx-test -d -p 8000:80 -v server-config:/etc/nginx/sites-enabled -v staging-files:/var/www/thebirdtree.com nginx'''
        sh 'ls /usr/share/nginx/html/'
      }
    }
  }
}