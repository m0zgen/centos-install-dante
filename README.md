# Script install Dante SOCKS daemon to CentOS

```
git clone https://github.com/m0zgen/centos-install-dante
cd centos-install-dante
./install.sh
```
After install, change Your subnet in dante config file - /etc/sockd.conf

Run dante interactive:
```
sockd
```
Or as daemon
```
sockd -D
```
