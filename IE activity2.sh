#!/bin/bash
no_of_users_in=`who | wc -l`
if [ ${no_of_users_logged_in} -eq 1 ]; then
    subject='System performance is good'
    who > /tmp/list_of_users.txt
    mail -s ${subject} mk.mamidi@gmail.com </tmp/list_of_users.txt
fi