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
            
                bat " pip install -r requirements.txt"
            }
        }

        stage('Run Robot Framework Tests') {
            steps {
                echo 'Running Robot Framework tests...'
                // Create results folder
                bat "if not exist results mkdir results"
                
                // Run all tests in your tests folder
               bat "${env.PYTHON} -m robot -d results LeanweTest/tests-suits/CreateOffer.robot"

             
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
                emailext (
                   subject: "Robot Framework Tests Successed",
                    body: """
                     <p>Hello,</p>
                     <p>The Robot Framework tests have failed on Jenkins.</p>
                     <p>Build: empty for now </p>
                     <p>See report: empty for now </a></p>
                     """,
                    to: 'nabil.chababnabil@gmail.com'
               )
        }

        unstable {
            echo 'Some tests failed — build is unstable.'
        }

        failure {
            echo 'Build or tests failed!'
            emailext (
                   subject: "❌ Robot Framework Tests Failed",
                    body: """
                     <p>Hello,</p>
                     <p>The Robot Framework tests have failed on Jenkins.</p>
                     <p>Build: empty for now </p>
                     <p>See report: empty for now </a></p>
                     """,
                    to: 'elhirechghizlane@gmail.com'
               )
        }
    }
}

