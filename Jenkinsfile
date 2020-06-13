pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
		sh 'make setup'
		sh 'pip3 freeze > test1.txt'
		sh 'make install'
		sh 'pip3 freeze > test2.txt'
            }
        }
	stage('Lint') {
            steps {
                sh 'make lint'
            }
        }
    }
}
