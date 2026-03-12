#!/bin/bash
cd ~/CA-DevOps
# This creates the dummy files automatically during deployment
touch privatekey.pem server.crt certificate.pem server.key
npm install
sudo pkill node || true
nohup npm start > nohup.out 2>&1 &