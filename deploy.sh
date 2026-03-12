#!/bin/bash
# 1. Enter the project directory
cd ~/CA-DevOps

# 2. Create the SSL files the app requires (handles the 'split' error)
openssl req -x509 -newkey rsa:4096 -keyout privatekey.pem -out server.crt -sha256 -days 365 -nodes -subj "/C=US/ST=DevOps/L=Tutorial/O=Dis/CN=localhost"

# 3. Stop any old versions to free up the port
sudo pkill node || true

# 4. Install the latest packages
npm install

# 5. Start the app in the background (nohup) on Port 80
# This keeps it running even after you log out
sudo PORT=80 nohup npm start > nohup.out 2>&1 &

echo "Deployment Successful! Access at http://3.92.27.15"