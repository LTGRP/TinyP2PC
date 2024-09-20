#!/bin/bash
echo DO NOT RUN THIS!


IPADDR=$(ifconfig eth0 | head -n 1 |awk '{print $2} ) 


origin_ip='$IPADDR' # change this. this is the ip of your first peer

clear

# install dependencies
./apt-get.sh
clear

# build
./make.sh

# run
./master_peer $origin_ip
