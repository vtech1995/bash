pipeline {
    agent any

    stages {
        stage('clean up') {
            steps {
                sh 'rm -rf *'
            }
        }
        stage('git clone') {
            steps {
                sh 'git clone "https://github.com/vtech1995/Docker-pro.git";cd Docker-pro;ls -ltr'
            }
        }
        stage('docker build') {
            steps {
                sh 'sudo docker build /var/lib/jenkins/workspace/todo-app/Docker-pro/ -t todo-app'
            }
        }
        stage('docker run') {
            steps {
                sh 'sudo docker run -idt -p 8001:8001 todo-app:latest'
            }
        }
    }
}
