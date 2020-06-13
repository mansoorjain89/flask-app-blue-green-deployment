pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
		bash 'make setup'
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
