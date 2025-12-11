#!/bin/bash

# Check if Netdata is running
if ! systemctl is-active --quiet netdata; then
  echo "Netdata is NOT running. Test failed."
  exit 1
fi

# Install stress tool
sudo yum install stress -y

echo "Generating CPU load..."
stress --cpu 2 --timeout 20 &

sleep 5

# Check again
if systemctl is-active --quiet netdata; then
  echo "Netdata is running normally during high load. Test passed."
  exit 0
else
  echo "Netdata crashed under load. Test failed."
  exit 1
fi