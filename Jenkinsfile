pipeline {
    
    agent any
    
    stages {
        stage('pre-build cleanup') {
            steps {
                sh 'docker system prune -f'
            }
        }    
        
        stage('build and run containers') {
            steps {
                sh "docker-compose up -d --build"
            }
        }
    }
}   
