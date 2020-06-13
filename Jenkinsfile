pipeline {
    agent any
        stages {
            stage('Build') {
                steps {
                    withPythonEnv('~/.website8/bin/python') {
                        make setup
                        pip3 -V
                    }
                }
            stage('Lint') {
                steps {
                    sh 'make lint'
                }
            }
        }
}
