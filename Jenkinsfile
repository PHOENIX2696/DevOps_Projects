pipeline {
   agent any

   tools {
      jdk 'JDK_17'
      maven 'Maven_3.9.6'
   }

   stages {

      stage('checkout'){
         steps {
             git branch: 'main', url: 'https://github.com/PHOENIX2696/DevOps_Projects.git'
         }
      }

      stage('build') {
          steps {
             echo 'building java application from maven'
             sh 'mvn clean install'
          }
      }

   }

   post {

     always {
        echo 'Pipeline finished'
        cleanWs()
     }

     success {
        echo 'Pipeline succeeded'
     }

     failure {
        echo 'Pipeline failed'
     }

   }

}