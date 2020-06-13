pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
		sh 'whoami'
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
