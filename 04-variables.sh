#!/bin/bash
echo "Please enter your PIN number"
read -s PIN_NUMBER # here PIN_NUMBER is variable

echo "PIN entered is: $PIN_NUMBER"

echo "please enter username"
read -s user_name
sudo useradd $user_name
echo "cat /etc/passwd |grep -i $user_name"
echo "user_name is $user_name"