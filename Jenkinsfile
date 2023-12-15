pipeline {
  agent any

    //Define the maven tool
  
  stages {
    stage('Build source code using maven'){
      steps{
        sh 'mvn  clean package'
      }
    }
    stage ('Docker build') {
      steps{
        sh 'docker build -t naaz1/java-app:1.4 .'
      }
    } 
  }
}
