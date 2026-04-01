pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                echo "Cloning Source code from github"
                checkout scm
            }
        }
        stage('Repository Validation') {
            steps {
                echo "Running Repository Validation"
                sh 'chmod +x ./cicd/scripts/ci-validate.sh'
                sh './cicd/scripts/ci-validate.sh'
            }
        }
        stage('Archive Build Report') {
            steps {
                echo "Archiving Build Report"
                archiveArtifacts artifacts: 'reports/build-report.txt', fingerprint:true
            }
        }
    }
    post {
        success {
            echo "Pipeline executed successfully."
        }
        failure {
            echo "Pipeline failed. check logs."
        }
        always{
            echo "Pipeline execution finished."
        }
    }
}

