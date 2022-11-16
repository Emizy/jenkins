pipeline {
    agent any
    stages {
            stage('Build') {
                steps {
                    sh '''
                        chmod += presetup.sh
                        ./presetup.sh

                        chmod +x envsetup.sh
                        ./envsetup.sh
                        '''
                }
            }
            stage('Setup Gunicorn') {
                steps {
                    sh '''
                    chmod +x gunicorn.sh
                    ./gunicorn.sh
                    '''
                }
            }
            stage('Setup Nginx') {
                steps {
                    sh '''
                    chmod +x nginx.sh
                    ./nginx.sh
                    '''
                }
            }
    }
}