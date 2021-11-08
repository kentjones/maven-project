pipeline {
  agent any

  tools {
    maven 'Maven-3.8.3'
  }
  options {
    timestamps()
  } 

  stages {
    stage('Build') {
      steps {
        sh 'mvn clean package'
      }
      post {
        success {
          echo 'now archiving....'
          archiveArtifacts artifacts: '**/target/*.war'
        }
      }
    }

  }
}