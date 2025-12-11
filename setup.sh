#!/bin/bash

# Update system
sudo apt update -y

# Install dependencies
sudo apt update -y
sudo apt install -y zlib1g-dev uuid-dev libmnl-dev gcc make autoconf automake pkg-config curl git python3-jsonschema jq libuv1-dev libyaml-dev libjson-c-dev

# Install Netdata
sudo curl https://get.netdata.cloud/kickstart.sh > /tmp/netdata-kickstart.sh && sh /tmp/netdata-kickstart.sh --stable-channel --claim-token xMQWyCrKe-bW-d9DVhqRqplQkbqkGrQXiVR_dPnJCsMx4L4dTBfImOwJzs85GGBoKGeSxQ6oxJ3wLds9St6S8jOb0xIZgNyWSW2hvlASjVaZgL_JdzKVyXpzLjSANZCUvlHM2-o --claim-rooms a3e91404-efb7-4e47-99f4-b831baa7354c --claim-url https://app.netdata.cloud

# Start Netdata
sudo systemctl start netdata
sudo systemctl enable netdata

echo "Netdata installed. Access it at: http://3.236.78.116:19999"
