pipeline {
  agent any
   options {
        // Set the working directory for all stages and steps
        dir('hello/Homework 4')
        }
  stages {
        stage('Test directory') {
            steps {
               // dir('Homework 4') {
                    script {
                        sh 'pwd' // Just to print the current directory for verification
                        sh 'ls -al'
                    }
                }
            }

        stage('Push image') {
            steps {
                withDockerRegistry(credentialsId: 'docker hub access token', url: 'https://index.docker.io/v1/') {
                  //  sh 'cd "Homework 4"'
                    sh 'pwd'
                    sh 'docker build -f /Dockerfile -t hieuchaya4/helloworld:latest .'
                    sh 'docker push hieuchaya4/helloworld:latest'
                }
        }
    }
}

}
