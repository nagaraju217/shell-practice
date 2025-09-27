#!/bin/bash
USERID=(id -u)

if [ $USERID -ne 0 ]; then
    echo "please run the script with root user"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo "$2 installing is failure"
    exit 1
else
    echo "$2 installed sucessfulley"
fi

}



dnf install mysql -y
VALIDATE $? "mysql"

dnf install nginx -y
VALIDATE $? "nginx"

dnf install python3 -y
VALIDATE $? "python3"