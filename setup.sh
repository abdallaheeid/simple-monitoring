#!/bin/bash

# Update system
sudo yum update -y

# Install dependencies
sudo yum install git curl zlib-devel libuuid-devel libmnl-devel gcc make autoconf automake pkgconfig -y
sudo yum install json-c-devel libuv-devel libyaml-devel -y

# Install Netdata
sudo bash <(curl https://get.netdata.cloud/kickstart.sh > /tmp/netdata-kickstart.sh && sh /tmp/netdata-kicksta>

# Start Netdata
sudo systemctl start netdata
sudo systemctl enable netdata

echo "Netdata installed. Access it at: http://3.236.78.116:19999"
