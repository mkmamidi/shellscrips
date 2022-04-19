#!/bin/bash
read -p "plaese enter user name : " USERID
id ${USERID} &> /dev/null
if [ $? -eq "0" ]
then
 echo "The given $USERID already exits"
else 
 echo -e "\n $USERID user doesnot exists"
 echo "user creation started"
 read -s -p "plaese enter passwd for ${USERID}: " USERPASS
 if [ -n "${USERPASS}" ]
  then
  adduser "${USERID}" --disabled-password  --gecos "" &> /dev/null
  echo "${USERID}:${USERPASS}" | chpasswd
  echo -e "\nUSERID creation is success"
  else
  echo -e "\ngiven length of passwd is not valid"
 fi
echo -e "script excution is completed" 
fi