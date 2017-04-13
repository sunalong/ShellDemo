#!/bin/bash
#reading values from a file
file="stateFile"
IFS.OLD=$IFS
IFS=$'\n'
echo IFS:$IFS
for state in `cat $file`
do
	echo Visit beautiful $state
done
IFS=$IFS.OLD
