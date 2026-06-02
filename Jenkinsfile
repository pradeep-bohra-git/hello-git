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
                  "target/*" \
                  "generic-local/builds/"
                '''
            }
        }
    }
}
