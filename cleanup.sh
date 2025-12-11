sudo systemctl stop netdata
sudo apt remove netdata -y
sudo rm -rf /etc/netdata

echo "Netdata Fully Removed"