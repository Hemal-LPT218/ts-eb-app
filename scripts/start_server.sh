#!/bin/bash
cd /home/ec2-user/ts-eb-app

# Stop any old container using the same port (optional cleanup)
OLD_CONTAINER=$(docker ps --format '{{.ID}} {{.Ports}}' | grep '0.0.0.0:3000' | awk '{print $1}')
if [ -n "$OLD_CONTAINER" ]; then
  echo "Stopping container on port 3000..." | tee -a $LOG_FILE
  docker stop $OLD_CONTAINER | tee -a $LOG_FILE
fi

echo "Running Docker container..."
docker run -p 3000:3000 --rm -d 730335183789.dkr.ecr.ap-south-1.amazonaws.com/demo-repository/docker-node-app:latest | tee -a /tmp/deploy_start.log