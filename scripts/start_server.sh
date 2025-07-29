#!/bin/bash
cd /home/ec2-user/ts-eb-app
docker run -p 3000:3000  730335183789.dkr.ecr.ap-south-1.amazonaws.com/demo-repository/docker-node-app:latest