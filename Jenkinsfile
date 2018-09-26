pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
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
        sh 'docker run -d -p 8000:80 --name nginx-test '
      }
    }
    stage('Staging') {
      steps {
        sh 'ls $WORKSPACE/'
        sh 'mkdir -p server-config'
        sh 'mkdir -p /var/www/thebirdtree.com'
        sh 'cp "$WORKSPACE"/thebirdtree.com.conf server-config/'
        sh 'cp -r $WORKSPACE/*.html staging-files/'
        sh 'ls /var/www/thebirdtree.com'
      }
    }
  }
}