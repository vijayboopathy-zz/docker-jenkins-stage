pipeline {
  agent {
    docker {
      image 'hashicorp/packer:full'
    }
  }
  stages {
    stage('Build') {
      steps {
        withCredentials([
          usernamePassword(credentialsID: '', 
          passwordVariable: 'AWS_SECRET', 
          usernameVariable: 'AWS_KEY')
        ]) {
          sh 'packer build -var aws_access_key=${AWS_KEY} -var aws_secret_key=${AWS_SECRET}' packer.json
        }
      }
    }
  }
}

