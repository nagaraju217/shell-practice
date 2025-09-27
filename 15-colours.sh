USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"



if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelege"
    exit 1 # failure is other than 0
fi


VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo -e "$2 installing is $Y failure $N"
    exit 1
else
    echo -e "$2 installed $Y sucessfulley $N"
fi

}

dnf list installed mysql
 if [ $1 -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "mysql"
    exit 1
else
    echo -e "mysql $Y already installed $N"
fi

dnf list installed nginx
 if [ $1 -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "nginx"
    exit 1
else
    echo -e "nginx $Y already installed $N"
fi

dnf list installed python3
 if [ $1 -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "python3"
    exit 1
else
    echo -e "python $Y already installed $N"
fi
