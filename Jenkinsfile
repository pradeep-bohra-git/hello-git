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
                  "/var/lib/jenkins/workspace/test_pipeline/*" \
                  "generic-local/builds/"
                '''
            }
        }
    }
}
