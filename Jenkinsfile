pipeline {
    agent any
        stages {
            stage('Build') {
                steps {
                    sh 'make setup'
                    withPythonEnv('/var/lib/jenkins/.website77/bin/python3') {
                        sh 'pip3 install -r requirements.txt'
                        sh 'pip3 freeze'
                    }
                }
            }
            stage('Lint') {
                steps {
                    sh 'make lint'
                }
            }
        }
}
