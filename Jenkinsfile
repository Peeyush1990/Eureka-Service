pipeline {
    agent any

    stages {
        stage('Build Eureka Service') {
            steps {
              checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Peeyush1990/Eureka-Service']])  
              bat 'mvn clean install'
                
            }
        }
        stage('Build Eureka Service docker image') {
            steps {
              bat 'docker build -t peeyushva/eureka-jenkins .'
                
            }
        }
        stage('Run Eureka Service') {
            steps {    
              bat 'docker run -d --name eureka-cont --network stud-network -p 8761:8761 peeyushva/eureka-jenkins'
                
            }
        }
        stage('Run Student Job') {
            steps {    
               build 'student-job'
            }
        }
    }
}