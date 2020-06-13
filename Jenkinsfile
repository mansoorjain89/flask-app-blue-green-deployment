pipeline {
    agent any
        stages {
            stage('Build') {
                steps {
                    sh 'make setup'
                    withPythonEnv('~/.website8/bin/python') {
                        sh 'pip -V'
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
