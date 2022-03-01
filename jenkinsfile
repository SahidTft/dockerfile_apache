pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {
	    
	    stage('gitclone') {

			steps {
				git 'https://github.com/SahidTft/dockerfile_apache.git'
			}
		}

		stage('Build') {

			steps {
				sh 'docker build -t sahidtft/apache_docker:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push sahidtft/apache_docker:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
