#!/bin/bash
cd /home/ec2-user/ts-eb-app

docker stop docker-node-app || true
docker rm docker-node-app || true

echo "Running Docker container..."
docker run -p 3000:3000 --rm -d --name docker-node-app 730335183789.dkr.ecr.ap-south-1.amazonaws.com/demo-repository/docker-node-app:latest