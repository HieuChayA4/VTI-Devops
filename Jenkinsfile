pipeline {
  agent any
  stages {
        stage('Change directory') {
            steps {
                dir('Homework 4') {
                    script {
                        sh 'pwd' // Just to print the current directory for verification
                    }
                }
            }
        }
        stage('Build and push image') {
            steps {
                withDockerRegistry(credentialsId: 'docker hub access token', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -f .\Dockerfile -t hieuchaya4/helloworld:latest .'
                    sh 'docker push hieuchaya4/helloworld:latest'
                }
            }
        }
    }
}
