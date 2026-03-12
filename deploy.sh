#!/bin/bash

# 1. Update packages and install node/npm if not present
sudo apt-get update
sudo apt-get install -y nodejs npm

# 2. Stop any old version of the app currently running to free up the port
# This kills any process currently running 'node'
sudo pkill node || true

# 3. Navigate to the app folder
# Note: ~ refers to the home directory of the ubuntu user
cd ~/CA-DevOps

# 4. Install dependencies 
npm install

# 5. Start the app in the background
# 'nohup' keeps it running even after CircleCI disconnects
# '> /dev/null 2>&1 &' sends logs to nowhere and runs it as a background task
nohup npm start > /dev/null 2>&1 &

echo "Deployment successful!"
exit