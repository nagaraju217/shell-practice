#!/bin/bash
echo "enter user name"
read -s user_name
sudo useradd $user_name
read -s password
sudo passwd $user_name
cat /etc/passwd |grep -i $user_name