#!/bin/bash
# adding values in an array
function addArray {
	local sum=0
	local newarray
	newarray=(`echo "$@"`)
	for value in ${newarray[*]}
	do
		sum=$[ $sum + $value ]
	done
	echo $sum
}
myarray=(1 2 3 4 5)
echo "The original array is :${myarray[*]}"
arg1=`echo ${myarray[*]}`
result=`addArray $arg1`
echo "The result is $result"
