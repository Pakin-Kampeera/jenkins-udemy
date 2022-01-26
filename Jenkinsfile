pipeline {
	agent any
	stages {
		stage('Test') {
			steps {
				sh './mvn.sh mvn test'
			}
		}
		stage('Build') {
			steps {
				sh '''
				   	./mvn.sh mvn -B -DskipTests clean package
					./build.sh
				   '''
			}
		}
		stage('Push image') {
			steps {
				sh './push.sh'
			}
		}
		stage('Deploy') {
			steps {
				sh ''
			}
		}
	}
}
