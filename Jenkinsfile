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

                sh """sudo docker run -e PORTFOLIO_SECRET_KEY=${env.BUILD_ID} -e MORE_HOSTS_1=3.90.214.26 -e MORE_HOSTS_2=ec2-3-90-214-26.compute-1.amazonaws.com -p 8005:8005 portfolio"""
            }
        }
    }
}