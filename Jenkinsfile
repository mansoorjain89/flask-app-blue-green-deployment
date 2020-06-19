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
                    sh '''sudo chmod +x run_docker.sh
                          sudo ./run_docker.sh
                       '''
                }
            }
            stage('Deploy') {
                steps {
                    sh '''sudo chmod +x run_kubernetes.sh
                          sudo ./run_kubernetes.sh
                       '''
                }
            }
        }
}
