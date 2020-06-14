pipeline {
    agent any
        stages {
            stage('Build') {
                steps {
                    sh 'make setup'
                    withPythonEnv('/var/lib/jenkins/.website77/bin/python3') {
                        sh '''make install
                              pip3 -V
                              pip3 freeze
                            '''
                    }
                }
            }
            stage('Lint') {
                steps {
                    withPythonEnv('/var/lib/jenkins/.website77/bin/python3') {
                        sh 'make lint'
                    }
                }
            }
            stage('Dockerize') {
                steps {
                    sh './run_docker.sh'
                }
            }
        }
}
