pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'chmod +x build.sh'
                sh './build.sh'
            }
        }
    stage('Upload to JFrog') {
            steps {
                sh '''
                jf rt upload \
                  --server-id=my-jfrog \
                  "target/*" \
                  "generic-local/builds/"
                '''
            }
        }
    }
}
