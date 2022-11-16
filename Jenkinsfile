pipeline {
    agent any
    stages {
            stage('Build') {
                sh '''
                chmod +x envsetup.sh
                ./envsetup.sh
                '''
            }
            stage('Setup Gunicorn') {
                step {
                    sh '''
                    chmod +x gunicorn.sh
                    ./gunicorn.sh
                    '''
                }
            }
            stage('Setup Nginx') {
                step {
                    sh '''

                    chmod +x nginx.sh
                    ./nginx.sh

                    '''
                }
            }
    }
}