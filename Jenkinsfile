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
            withCredentials([usernamePassword(credentialsid:'docker-cred', passwordVariable:'pwd',usernameVariable: 'uName')]){
                sh "docker login -u${uName} -p ${pwd}"
                sh "docker push naaz1/java-app:1.4"
            }
        }
    }
  }
}
                                          
