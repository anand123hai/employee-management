node('master') {
	stage('Checkout from github') {
		git credentialsId: 'github-credentials-anand123hai', url: 'https://github.com/anand123hai/employee-management.git'
}
stage('Build & Unit test'){
    bat 'mvn clean install ;
}
}