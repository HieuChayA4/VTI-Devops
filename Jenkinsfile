pipeline {
  agent any
  stages {
        stage('Change directory') {
            steps {
                dir('Homework 4') {
                    script {
                        sh 'pwd' // Just to print the current directory for verification
                        sh 'ls -al'
                    }
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    def dockerImage = 'hieuchaya4/helloworld:latest'
                    def dockerfilePath = '/var/jenkins_home/workspace/hello/Homework 4/Dockerfile'  // Update the path accordingly

                    sh "docker build -f ${dockerfilePath} -t ${dockerImage} /var/jenkins_home/workspace/hello/Homework 4"
                }
            }
        }
    
        stage('Push image') {
            steps {
                withDockerRegistry(credentialsId: 'docker hub access token', url: 'https://index.docker.io/v1/') {
                   //sh 'docker build -f ./Dockerfile -t hieuchaya4/helloworld:latest .'
                    sh 'docker push hieuchaya4/helloworld:latest'
                }
            }
        }
    }
}

