pipeline {
    agent any
        stages {
            stage('Build') {
                steps {
                    sh 'make setup'
                    withPythonEnv('/var/lib/jenkins/.website77/bin/python3') {
                        sh '''pip3 install -r requirements.txt
                              pip3 -V
                              pip3 freeze
                              pip3 -V
                            '''
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
