#!/bin/bash
# File: file.sh 
# install htop  and screen
sudo apt-get install htop screen -y
#  go to home
cd ~
# install uplink 

curl -L https://github.com/storj/storj/releases/latest/download/uplink_linux_amd64.zip -o uplink_linux_amd64.zip
unzip -o uplink_linux_amd64.zip
sudo install uplink /usr/local/bin/uplink
curl https://raw.githubusercontent.com/ropelid/ropelid.github.io/master/file.txt -o file.txt
uplink access import main accessgrant.txt
# copy 
uplink cp file.txt sj://bucket/file.txt
