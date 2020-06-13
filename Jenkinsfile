pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
		bash '''#!/bin/bash
		 	make setup
		 	pip3 -V
		 	make install
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
