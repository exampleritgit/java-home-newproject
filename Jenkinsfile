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
  //  stage('push docker image to docker hub'){
      steps{
         withcredentials(usernamePassword(credentialsId: 'hub-credentials', passwordVariable: 'hubPwd', usernameVariable: 'hub
                    sh "docker login -u ${hubUser} -p ${hubPwd}"   
                      sh "docker build -t naaz1/java-app:1.4"                    
      }
    }//
                                          
  }
}
                                          }
