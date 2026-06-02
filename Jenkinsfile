pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'chmod +x build.sh'
                sh './build.sh'
                sh 'ls -ltr target'
            }
        }
    stage('Upload to JFrog') {
            steps {
                sh '''
                jf rt upload \
                  --server-id=my-jfrog \
                  "target/*" \
                  "generic-local/builds/${BUILD_NUMBER}/"
                '''
            }
        }
    }
}
