pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'make install' 
            }
        }
	stage('Lint') {
            steps {
                sh 'make lint'
            }
        }
    }
}
