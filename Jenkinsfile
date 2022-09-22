libraries{
    lib('shared-lib')
}

pipeline {

  environment {
    dockerimagename = "app"
    dockerImage = ""
  }

  agent any

  stages {

    stage('Checkout Source') {
      steps {
        git 'https://github.com/shuklaamber/AXYYA-answers.git'
      }
    }

    stage('Build image') {
      steps{
        script {
          dockerImage = docker.build app
        }
      }
    }

    stage('Deploying App to Kubernetes') {
      steps {
        script {
          kubernetesDeploy(configs: "deploymentservice.yml", kubeconfigId: "kubernetes")
        }
      }
    }

  }

}