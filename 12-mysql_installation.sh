#!/bin/bash
USERID=(id -u)

if [ $USERID -ne 0 ]; then
    echo "please run the script with root user"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "mysql installing is failure"
    exit 1
else
    echo "mysql installation sucess"
fi