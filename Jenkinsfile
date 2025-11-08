
pipeline {
    agent any
    def gitUrl = 'https://github.com/aditya-35/docker_hello_java.git'
    def credentialsId = 'aditya-35' 
    def dockerImageName = 'my-java-hello-app:latest'

    stages {
        stage('Clone Repository') {
            steps {
                git url: gitUrl, credentialsId: credentialsId, branch: 'main'
            }
        }
        stage('Build and Tag Docker Image') {
            steps {
                script {
                    docker.build(dockerImageName)
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                sh "docker run --rm ${dockerImageName}"
            }
        }
    }
}
