#!/bin/bash
# processing options and parameters with getopts
while getopts :ab:cd opt
do
	case "$opt" in
	a) echo "Found the -a option";;
	b) echo "Found the -b option";;
	c) echo "Found the -c option";;
	d) echo "Found the -d option";;
	*) echo "Unknown option:$opt";;
	esac
done
echo "当前OPTIND:$OPTIND"
#shift $[ $OPTIND -1 ]
echo "ii当前OPTIND:$OPTIND"
count=1
for param in "$@"
do
	echo "Parameter $count:$param"
	count=$[ $count + 1 ]
done
