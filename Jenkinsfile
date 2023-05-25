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
                sh '''
                docker network inspect duo-net && sleep 1 || docker network create duo-net
                docker build -t duo-app:v1 .
                docker run -d --network duo-network --name duo-app duo-app:v1
                docker run -d -p 80:80 --mount type=bind,source=$(pwd)/nginx.conf,target=/etc/nginx/nginx.conf --network duo-network --name nginx nginx:alpine
                '''
            }
        }
    }
}
