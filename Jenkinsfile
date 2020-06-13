pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'pwd' 
            }
        }
	stage('Lint') {
            steps {
                sh 'make lint'
            }
        }
    }
}
