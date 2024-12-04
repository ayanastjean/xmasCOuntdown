pipeline {
    agent any  // Runs on any available Jenkins agent

    environment {
        MVN_HOME = '/usr/local/maven'  // Path to Maven installation if you have a custom Maven setup
    }

    stages {
        // Stage 1: Checkout the code from the repository
        stage('Checkout') {
            steps {
                // Pull code from Git repository
                git 'https://github.com/ayanastjean/xmasCountdown.git'  // Replace with your repo URL
            }
        }

        // Stage 2: Build the project using Maven
        stage('Build') {
            steps {
                script {
                    // Run the Maven build command (this will compile and package your WAR)
                    sh '''#!/bin/bash
                    mvn clean install
                    '''
                }
            }
        }

        // Stage 3: Run unit tests (Optional, but recommended)
        stage('Test') {
            steps {
                script {
                    // Run the tests
                    sh 'mvn test'  // Ensure this works with your testing framework (JUnit)
                }
            }
        }

        // Stage 4: Build Docker image and push (optional, for Docker-based deployment)
        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image for your app
                    sh '''#!/bin/bash
                    docker build -t xmascd-app .
                    '''
                }
            }
        }

        // Stage 5: Deploy the WAR file to Tomcat (or deploy Docker image)
        stage('Deploy') {
            steps {
                script {
                    // Deploy the Docker container
                    sh '''#!/bin/bash
                    docker run -d -p 8082:8080 xmascd-app
                    '''
                }
            }
        }
    }

    post {
        success {
            // Actions to take if the build is successful
            echo 'Build and deployment were successful!'
        }
        failure {
            // Actions to take if the build fails
            echo 'Build or deployment failed.'
        }
    }
}
