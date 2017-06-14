#!/bin/bash
# Script install Dante SOCKS daemon to CentOS

# Install decencies
yum -y install git automake gcc make tcp_wrappers-devel wget

# Extract Dante
wget https://www.inet.no/dante/files/dante-1.4.2.tar.gz
tar -xvf dante-1.4.2.tar.gz
cd dante-1.4.2

# Compile and Install
./configure
make && make install

# Copy config
cp ../sockd.conf /etc

# Allow remote connection
firewall-cmd --permanent --add-port=1080/tcp
firewall-cmd --reload

echo "Done!"