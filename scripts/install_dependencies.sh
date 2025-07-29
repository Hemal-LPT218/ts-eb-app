#!/bin/bash
cd /home/ec2-user/ts-eb-app
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 730335183789.dkr.ecr.ap-south-1.amazonaws.com


