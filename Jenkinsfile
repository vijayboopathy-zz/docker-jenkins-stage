node {
  checkout scm
  docker.withServer('tcp://172.31.79.14:2375'){
    docker.image('hashicorp/packer:full'){
      sh 'packer build -var aws_access_key=${AWS_KEY} -var aws_secret_key=${AWS_SECRET} packer.json'
    }
  }
}
