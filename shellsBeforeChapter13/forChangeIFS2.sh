#!/bin/bash
#reading values from a file
file="/etc/passwd"
IFS.OLD=$IFS
IFS=:
echo IFS:$IFS
for state in `cat $file`
do
	echo field in passwd:$state
done
IFS=$IFS.OLD
echo IFS:$IFS
