pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t devops-app .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh 'docker rm -f devops-app || true'
            }
        }

        stage('Run New Container') {
            steps {
                sh 'docker run -d --name devops-app -p 80:80 devops-app'
            }
        }
    }
}
