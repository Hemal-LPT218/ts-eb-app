#!/bin/bash
cd /home/ec2-user/ts-eb-app
pm2 stop all || true
pm2 start dist/index.js --name ts-eb-app