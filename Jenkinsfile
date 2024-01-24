pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = credentials('eastyler-dockerhub')
    }
    stages {
        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'cd ./backend'
                sh 'npm install'
                sh 'npm test'
            }
        }
        stage('Build') {
            steps {
                echo 'Building docker image'
                // sh 'docker build -t jenk:jenko .'
                sh 'docker build -t eastyler/jenkins-learn:jenko .'
            }
        }
        stage('Login') {
            steps {
                echo 'Logging in...'
                // sh 'docker build -t jenk:jenko .'
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('Push/Deploy') {
            steps {
                echo 'Pushin...'
                // sh 'docker build -t jenk:jenko .'
                sh 'docker push eastyler/jenkins-learn:jenko'
            }
        }
    }
    post {
        always {
            sh 'docker logout'
        }
    }
}
