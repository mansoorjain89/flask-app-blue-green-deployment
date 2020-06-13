pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'apt install make -y'
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
