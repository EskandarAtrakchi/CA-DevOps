#!/bin/bash
# Update packages and install node/npm if not present
sudo apt-get update
sudo apt-get install -y nodejs npm

# Navigate to the app folder
cd ~/CA-DevOps

# Install dependencies and start the app
# (Note: Using 'pm2' or '&' is common to keep the app running)
npm install
nohup npm start > /dev/null 2>&1 &
exit