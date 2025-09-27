#!/bin/bash
USER_ID=(id -u)

if [$USER_ID -ne 0] ;then
    echo "please run the script with root user"
    EXIT 1
fi

dnf install mysql -y

if [$? -ne 0]; then
    echo "mysql installing is failure"
    EXIT 1
else
    echo "mysql installation sucess"
fi