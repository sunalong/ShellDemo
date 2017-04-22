#!/bin/bash
# getting just one character of input
read -n3 -p "Do you want to continue [Y/N]?" answer
case $answer in 
Y|y) echo
	echo "fine,continue on...";;
N | n) echo
		echo ok,goodbye
		echo;;
*) echo
	echo "Input is illegal";;
esac
echo "This is the end of the script"
