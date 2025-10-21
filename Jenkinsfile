pipeline {
    agent any

    environment {
        PYTHON = "python"
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Cloning GitHub repository...'
                git branch: 'main', url: 'https://github.com/ghizlaneElhirech/leanwe_test_auto.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                echo 'Installing Python dependencies...'
                bat "${env.PYTHON} -m pip install --upgrade pip"
                bat "${env.PYTHON} -m pip install -r requirements.txt"
            }
        }

        stage('Run Robot Framework Tests') {
            steps {
                echo 'Running Robot Framework tests...'
                // Create results folder
                bat "if not exist results mkdir results"
                
                // Run all tests in your tests folder
               bat "${env.PYTHON} -m robot -d results LeanweTest/tests-suits/CreateOff"

                bat "${env.PYTHON} -m robot -d results LeanweTest/tests-suits/CreatePurchase.robot"
            }
        }
    }

    post {
        always {
            echo 'Publishing Robot Framework test results...'
            // Publish results using Robot Framework plugin
            robot outputPath: 'results', 
                  outputFileName: 'output.xml', 
                  reportFileName: 'report.html', 
                  logFileName: 'log.html'
        }

        success {
            echo 'Build and tests completed successfully!'
        }

        unstable {
            echo 'Some tests failed — build is unstable.'
        }

        failure {
            echo 'Build or tests failed!'
        }
    }
}

