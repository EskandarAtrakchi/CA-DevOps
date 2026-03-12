#!/bin/bash

# Navigate to the app folder
cd ~/CA-DevOps

# Kill any old versions of the app
sudo pkill node || true

# Install dependencies
npm install

# --- THE FIX: Create the missing files the app is looking for ---
touch privatekey.pem
touch server.crt
touch certificate.pem

# Start the app in the background
nohup npm start > /dev/null 2>&1 &

echo "Deployment triggered!" 