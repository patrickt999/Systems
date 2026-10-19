#!/bin/bash

echo "A Quick System Audit Script"
date
echo #blank line
echo "Machine Type Info:"
echo $MACHTYPE #system machine architecture
echo -e "Uname info: $(uname -a) \n" #kernel and OS information
echo -e "IP Info: $(ip -4 addr show scope global | grep -m1 'inet ') \n" #display IP address and network configuration
#inet IPv4 address and subnet prefix length
#brd broadcast address used to send packets to devices on the subnet
#scope global - not public IP but address usable beyond the local machine, unlike loopback address
#dynamic or static - IP address assignment
#the name of the computer's network interface, typically the ethernet adapter
echo "Hostname: $(hostname -s) " #display hostname
echo "DNS Servers: "
cat /etc/resolv.conf #display DNS resolver configuration
echo
echo "Memory Info:"
free #display RAM and swap usage
echo -e "\nCPU Info:"
lscpu | grep CPU #display CPU information
echo -e "\nDisk Usage:"
df -H / #inspect root file system
echo -e "\nWho is logged in: \n $(who) \n" #logged in users
