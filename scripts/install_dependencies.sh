#!/bin/bash
cd /home/ec2-user/ts-eb-app
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 730335183789.dkr.ecr.us-east-1.amazonaws.com


