#!/bin/bash
#checking if a directory exists
if [ -e $HOME ];then
	echo "OK on the directory.now let's check the file"
	#checking if a file exists
	if [ -e $HOME/testp ];then
		#the file exists,append data to it
		echo "Appending date to existing file"
		date >> $HOME/testp
	else
		#the file doesn't exst.create a new file
		echo "Creating new file"
		date >$HOME/testp
	fi
else
	echo "Sorry,you don't have a HOME Dir"
fi
