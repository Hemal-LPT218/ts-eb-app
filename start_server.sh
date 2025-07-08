#!/bin/bash
cd /home/ec2-user/ts-eb-app
npm run build
npm run start > app.log 2>&1 &
