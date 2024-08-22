#!bin/bash

# we are going to install mysql and postfix through shell-script

userid=$(id -u)

#Check before try to install weather user has a proper acess or not
if [  $userid -ne 0 ]
 then 
     echo "ERROR: The user does not have a root aceess..please try with root access"
      exit 1
fi
yum install mysql -y

#we should check installation is success or not 

if [ $? -ne 0 ]
  then 
     echo "MySQL Installation is not success"
      
     exit 1 
  else
     echo "MySQL Installation is successfully completed"
fi      

yum install postfix -y

if [ $? -ne 0 ]
 then 
    echo "Postfix installation is not success"
    exit 1
 else
    echo "Postfix installaation is successfully completed"
fi       
