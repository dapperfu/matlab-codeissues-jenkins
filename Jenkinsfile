pipeline {
    agent any

    stages {
        stage('Check MATLAB Code') {
            steps {
                runMATLABCommand 'run_codeIssues'
                recordIssues(tools: [sarif(pattern: '**/codeIssues.sarif')])
            }
        }
    }
}