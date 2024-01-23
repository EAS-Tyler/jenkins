pipeline {
    agent any

    stages {
    //     stage('Test') {
    //         steps {
    //             echo 'Testing...'
    //         // sh ' '
    //         }
    //     }
        stage('Build') {
            steps {
                echo 'Building docker image'
                sh 'docker build -t jenk:jenko .'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploy - Pushing docker image to registry'
                sh 'docker push eastyler/jenkins-learn:jenko'
            }
        }
    }
}
