pipeline {
 agent any
 stages {
   stage('Install') {
     steps {
       echo 'install...'
       sh 'apt install maven'
     }
   }
   stage('Build') {
     steps {
       echo 'Building...'
       sh 'mvn clean install'
     }
   }
    stage('Test') {
      steps {
        echo 'Testing...'
        sh 'mvn test'
      }
    }
    stage('Build Docker Image') {
      steps {
        echo 'Building Docker Image...'
        sh 'docker build https://raw.githubusercontent.com/ceti001/jenkins/refs/heads/main/Dockerfile -t myapp:latest .'
      }
    }
    stage('Deploy to Kubernetes') {
      steps {
        echo 'Deploying to Kubernetes...'
        sh 'kubectl apply -f https://raw.githubusercontent.com/ceti001/jenkins/refs/heads/main/deployment.yaml'
      }
    }
  }
}

