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

    post {
        success {
            emailext(
                subject: 'Build SUCCESS DevOps',
                body: 'El pipeline terminó correctamente.',
                to: 'francisco@test.com'
            )
        }

        failure {
            emailext(
                subject: 'Build FAILED DevOps',
                body: 'El pipeline falló.',
                to: 'francisco@test.com'
            )
        }
    }
}
