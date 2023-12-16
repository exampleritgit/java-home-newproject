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
    stage('Docker push'){
       steps{
            withCredentials([usernamePassword(credentialsId: 'hub-credentials', passwordVariable: 'hubPwd', usernameVariable: 'hubUser')]) {
     sh "docker login -u ${hubUser} -p ${hubPwd}"
       sh "docker push docker0237/java-tech:0.0.2"      
            }
        }
     }
  }
}
                                          
