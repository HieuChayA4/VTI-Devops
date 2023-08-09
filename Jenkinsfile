pipeline {
  agent any
  stages {
        stage('Change directory') {
            steps {
                sh 'cd ./Homework 4'
            }
        }
        stage('Build and push image') {
            steps {
                withDockerRegistry(credentialsId: 'docker hub access token', url: 'https://index.docker.io/v1/)') {
                    sh 'docker build -t hieuchaya4/helloworld:latest .'
                    sh 'docker push hieuchaya4/helloworld:latest'
                }   
            }
        }
    }
}
