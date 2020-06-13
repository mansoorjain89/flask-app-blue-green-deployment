pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
		sh '''#!/bin/bash
		      echo "hello world" 
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
