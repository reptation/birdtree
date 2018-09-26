pipeline {
  agent any
  stages {
    stage('Build') {
      agent {
        docker {
          image 'nginx'
          args '-p 8000:80 -d '
        }

      }
      environment {
        GITNAME = 'reptation'
      }
      steps {
        sh '''echo $GITNAME



'''
        sh 'ls $WORKSPACE'
        sh 'mkdir -p /var/www/thebirdtree.com'
        sh 'cp "$WORKSPACE"/*.html /var/www/thebirdtree.com'
      }
    }
    stage('Staging') {
      steps {
        sh 'docker run -p 8000:80 --name nginx-test -d nginx'
        sh 'mkdir -p server-config'
        sh 'mkdir -p /var/www/thebirdtree.com'
        sh 'cp "$WORKSPACE"/thebirdtree.com.conf server-config/'
        sh 'cp -r $WORKSPACE/*.html staging-files/'
        sh 'ls /var/www/thebirdtree.com'
      }
    }
  }
}