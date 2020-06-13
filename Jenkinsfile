pipeline {
    agent any
        stages {
            stage('Build') {
                steps {
                    sh 'make setup'
                    withPythonEnv('/var/lib/jenkins/.website77/bin/python3') {
                        sh 'make install'
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
