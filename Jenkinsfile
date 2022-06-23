pipeline {
  agent any
  
  tools {
    maven 'Maven-3.8.3'
  }

  stages {
    stage('Build') {
      steps {
        bat 'mvn clean package'
      }
  }
}