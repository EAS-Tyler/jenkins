pipeline {
    agent any

    stages {
        //     stage('Test') {
        //         steps {
        //             echo 'Testing...'
        //         // sh 'npm i
        //                 npm test '
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
                // add my authentication deets?
                sh 'docker login -u eastyler -p Dontbeshit1! https://docker.io'
                sh 'docker push  https://docker.io/jenk:jenko'
            // sh 'docker push eastyler/jenkins-learn:jenko'
            // sh 'docker tag jenk eastyler/jenky'
            }
        }
    }
}
