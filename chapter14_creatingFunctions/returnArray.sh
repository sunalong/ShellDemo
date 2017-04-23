#!/bin/bash
# returning an array value
function arraydb1 {
	local origarray
	local newarray
	local length
	local i
	origarray=(`echo "$@"`)
	newarray=(`echo "$@"`)
	length=$[ $# -1 ]
	for (( i=0;i<=$length;i++ )) {
		newarray[i]=$[ ${origarray[$i]} * 2 ]
	}
	echo ${newarray[*]}
}
myarray=(1 2 3 4 5)
echo "The original array is:${myarray[*]}"
arg1=`echo ${myarray[*]}`
result=(`arraydb1 $arg1`)
echo "The new array is :${result[*]}"
