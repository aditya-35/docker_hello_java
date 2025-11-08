pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                sh 'docker build -t my-new-java-app:1.0 .'
		sh 'docker images'
            }
        }

        stage('Run') {
            steps {
                sh 'docker run -t --name my-new-java-cont my-new-app:1.0'
		sh 'docker logs my-new-java-cont'
            }
        }
    }

   post {
	always{
		echo 'Pipeline Finished.'
		}
	}
}
