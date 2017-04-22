#!/bin/bash
#using a variable to hold the list
list="Alabama Alaska Arizona Arkansas Colorado"
list=$list" Connecticut"
touch stateFile
for state in $list
do
	echo "Have you ever visited $state?"
	echo $state >>stateFile
done
