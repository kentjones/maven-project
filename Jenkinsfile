pipeline {
  agent any
  parameters{
      string(name: 'tomcat_dev', defaultValue: 'laptop:8010', description: 'Tomcat development server')
      string(name: 'tomcat_prod', defaultValue: 'laptop:9010', description: 'Tomcat production server')
  }
  triggers{
      pollSCM('* * * * *')
  }
  tools {
    maven 'Maven-3.8.3'
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
    stage('Deploy to Dev'){
      steps {
        build job: 'maven-deploy-to-dev'
      }
    }
  }
}