pipeline{
    agent any
    stages{

        stage('Docker build'){
            steps{
                echo 'Build the docker file'
                sh 'sudo docker build . -t portfolio'
            }
        }

        stage('Docker run'){
            steps{
                echo 'Build the docker file'
                sh 'sudo docker run -e PORTFOLIO_SECRET_KEY=${env.BUILD_ID} -e MORE_HOSTS_1=3.89.59.128 -e MORE_HOSTS_2=ec2-3-89-59-128.compute-1.amazonaws.com -p 7040:7040 portfolio'
            }
        }
    }
}