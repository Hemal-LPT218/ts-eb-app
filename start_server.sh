#!/bin/bash
cd /home/ec2-user/ts-eb-app
npm start > app.log 2>&1 &
