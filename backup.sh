#!/bin/bash
declare -a USER_NAMES
USER_NAMES=("user1" "user2" "user3" "user4" "user5" "user6")
TO_PATH=/home/
for USER in "${USER_NAMES}"
do
  echo "Backup of ${USER}...."
  id "${USER}" &> /dev/null
  EC=$?
  if [ "${EC}" -eq "0" ] 
  then
   echo "user {USER} exist in the system"
   USER_HOME=$(awk -F ':' -v user="${USER}" '$1==user {print $6}' /etc/passwd )
   echo "The path for home directory for user ${USER} is ${USER_HOME}"
   DIR=$( dirname "${USER_HOME}" )
   BASE=$( basename "${USER_HOME}" )
   tar -C ${DIR} -Pczf ${TO_PATH}/${USER}.tar.gz ${BASE}
   else 
   echo "user ${USER} Does not exist in the system"
   fi
done   