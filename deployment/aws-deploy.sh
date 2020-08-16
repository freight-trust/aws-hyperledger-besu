#!/bin/bash
echo "make sure you have configured the boilerplate parameters..."
sleep 1

aws cloudformation create-stack --stack-name docker-volume --parameters ParameterKey=VPCID,ParameterValue=<default-vpc-id> ParameterKey=SubnetId,ParameterValue=<public-subnet-id> ParameterKey=KeyName,ParameterValue=<key-pair-name>  --template-body file://./ecs-cluster.yml --capabilities CAPABILITY_IAM

exit 0
