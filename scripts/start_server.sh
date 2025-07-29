#!/bin/bash
cd /home/ec2-user/ts-eb-app
echo "Running Docker container..."
docker run -p 3000:3000 --rm -d 730335183789.dkr.ecr.ap-south-1.amazonaws.com/demo-repository/docker-node-app:latest | tee -a /tmp/deploy_start.log