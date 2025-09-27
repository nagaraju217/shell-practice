#!/bin/bash
echo "enter user name"
read -s user_name
sudo useradd $user_name
echo "user created is : $user_name"
echo "enter password "
read -s password
sudo passwd $user_name
echo "user created and password set for :$user_name"
cat /etc/passwd |grep -i $user_name
echo "script executed is: $0"