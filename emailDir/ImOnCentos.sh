#!/bin/bash

#save the username parameter
muser=$1

#determine if user is logged on
loggedOn=$(who | grep -i -m 1 $muser | gawk '{print $1}')
if [ -z $loggedOn ]
then
	echo "$muser is not logged on."
	echo "Exiting script..."
	exit
fi

#determine if user allows messageing:
allowed=$(who -T | grep -i -m 1 $1 | gawk '{print $2}')
if [ $allowed != "+" ]
then
	echo "$muser does not allowing messageing."
	echo "Exiting script..."
	exit
fi

#determine if a message was included:
if [ -z $2 ]
then
	echo "No message parameter included."
	echo "Exiting script..."
	exit
fi

#determine if there is more to the message
shift
while [ -n "$1" ]
do
	whole_message=$whole_message' '$1
	shift
done

#Send message to user
uterminal=$(who | grep -i -m 1 $muser | gawk '{print $2}')
echo $whole_message | write $loggedOn $uterminal
