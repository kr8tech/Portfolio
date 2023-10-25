pipeline{
    agent any
    stages{
        stage('Setting up virtual environment') {
            steps {
                echo 'Making sure that pip is up to date'
                sh 'apt install python3-pip -y'
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
                sh 'python3 -m manage.py runserver 7000'
            }
        }
    }
}