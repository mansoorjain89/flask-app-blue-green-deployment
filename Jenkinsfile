pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
		sh 'make setup'
		sh 'pip3 -V'
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
