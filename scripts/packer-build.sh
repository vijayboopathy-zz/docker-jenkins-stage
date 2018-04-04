#!/bin/bash
set -e

rm -rf docker-jenkins-stage
git clone https://github.com/vijayboopathy/docker-jenkins-stage
cd docker-jenkins-stage
packer build -var aws_access_key=${AWS_KEY} -var aws_secret_key=${AWS_SECRET} mssql-ami.json
