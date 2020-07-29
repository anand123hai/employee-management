
properties([parameters([string(defaultValue: '1.0', description: '', name: 'release-version', trim: false)])])
node('master') {
	stage('Checkout from github') {
		git branch: 'develop', credentialsId: 'github-credentials-anand123hai-global', url: 'https://github.com/anand123hai/employee-management.git'
}
stage('Build & Unit test'){
    bat 'mvn clean install' ;
}
stage('Deploy artifacts to Nexus') {
    bat 'mvn clean deploy'
}
stage('Pull artifacts from Nexus and deploy it to Tomcat(DEV)') {
    bat 'mvn -U dependency:copy -Dartifact=com.jwt.spring:SpringMVCHibernateCRUD:1.0-SNAPSHOT:war'
}

}