pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
		sh '''#!/bin/bash
		      make setup
		      pip3 -V
         	'''
            }
        }
	stage('Lint') {
            steps {
                sh 'make lint'
            }
        }
    }
}
