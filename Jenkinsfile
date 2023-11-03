pipeline{
    agent any
    stages{

        stage('Docker build'){
            steps{
                echo 'Build the docker file'
                sh 'sudo docker build . -t portfolio'
                sh 'sudo docker inspect portfolio'
            }
        }

        stage('Docker run'){
            steps{
                echo 'Build the docker file'

                sh """sudo docker run -e PORTFOLIO_SECRET_KEY=${env.BUILD_ID} -e MORE_HOSTS_1=34.227.195.1 -e MORE_HOSTS_2=ec2-34-227-195-1.compute-1.amazonaws.com -p 8005:8005 portfolio"""
            }
        }
    }
}