pipeline {
 agent any
 stages {
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
 sh 'docker build -t myapp:latest .'
 }
 }
 stage('Deploy to Kubernetes') {
 steps {
 echo 'Deploying to Kubernetes...'
 sh 'kubectl apply -f deployment.yaml'
 }
 }
 }
 }

