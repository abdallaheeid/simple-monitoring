sudo systemctl stop netdata
sudo yum remove netdata -y
sudo rm -rf /etc/netdata

echo "Netdata Fully Removed"