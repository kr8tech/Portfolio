pipeline{
    agent any
    stages{
        stage('Setting up virtual environment') {
            steps {
                echo 'Install dependencies and Making sure that pip is up to date'
                sh 'sudo apt-get install -y python3-pip '
                sh 'sudo apt-get update'
                sh 'sudo apt-get install -y python3.10-venv'
                sh 'python3 -m pip install --upgrade pip'
                echo 'Creating a virtual evironment'
                sh 'python3 -m venv .'
                echo 'Activating the virtual environment'
                sh '. bin/activate'
            }
        }

        stage('Build') {
            steps {
                echo 'Installing depdendencies from requirements.txt'
                sh 'python3 -m pip install -r requirements.txt'
            }
        }

        // The test stage
        // Here we are running our tests with pytest and exporting 
        // the results with junit-xml to ./reports/test_report.xml
        stage('Test') {
            steps {
                echo 'Running tests via pytest'
                sh 'python3 manage.py runserver 7000'
            }
        }
    }
}