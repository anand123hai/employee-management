node('master') {
	stage('Checkout from github') {
		git branch: 'develop', credentialsId: 'github-credentials-anand123hai-global', url: 'https://github.com/anand123hai/employee-management.git'
}
stage('Build & Unit test'){
    bat 'mvn clean install' ;
}
stage('Deploy to Dev server')
    bat 'mvn clean deploy'
}