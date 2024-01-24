pipeline {
    agent any

    tools {
        maven "Maven-3"
    }

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'main', url: 'https://github.com/HerbertMG/RestFul-Booker-KARATE-Automation.git'

                bat "mvn clean package -DskipTest=true -f pom.xml"

            }

        }
        
        stage('Test') {
            steps {
                bat "mvn test -f pom.xml"
            }

        }
    }
}