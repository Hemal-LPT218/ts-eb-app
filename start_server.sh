#!/bin/bash
cd /home/ec2-user/ts-eb-app
npm run build
npm run start > server.log 2>&1 &