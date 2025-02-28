#!/bin/bash


<< sagar
craetting 
user
sagar


read -p "enter usernam" user
if [[ $user == "ravi" ]];
then 
	echo "this user alreaady exist."
elif [[ $user == "rava" ]];
then 
	echo "this is also exist"
else
 	
sudo useradd -m $user
echo "user is created by ifelse"
fi
cat /etc/passwd


#sudo useradd -m $1





