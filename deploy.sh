#!/bin/bash
# Navigate to folder
cd ~/CA-DevOps

# 1. Generate the security data the app needs to start
openssl req -x509 -newkey rsa:4096 -keyout privatekey.pem -out server.crt -sha256 -days 365 -nodes -subj "/C=US/ST=DevOps/L=Tutorial/O=Dis/CN=localhost"

# 2. Clean up old processes
sudo pkill node || true

# 3. Install and Start
npm install
nohup npm start > /dev/null 2>&1 &

echo "Deployment finished on port 8443"