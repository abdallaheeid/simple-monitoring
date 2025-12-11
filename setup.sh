#!/bin/bash

# Update system
sudo apt update -y

# Install dependencies
sudo apt install git curl zlib-devel libuuid-devel libmnl-devel gcc make autoconf automake pkgconfig -y
sudo apt install json-c-devel libuv-devel libyaml-devel -y

# Install Netdata
sudo bash <(curl https://get.netdata.cloud/kickstart.sh > /tmp/netdata-kickstart.sh && sh /tmp/netdata-kicksta>

# Start Netdata
sudo systemctl start netdata
sudo systemctl enable netdata

echo "Netdata installed. Access it at: http://3.236.78.116:19999"
