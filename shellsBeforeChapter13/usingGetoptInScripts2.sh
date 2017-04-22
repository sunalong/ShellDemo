#!/bin/bash
# extracting command line options and values with getopt
set -- `getopt -q ab:c "$@"`
while [ -n "$1" ]
do
	case "$1" in
	*) echo "$1 is not an option";;
	esac
	shift
done
count=1
for param in "$@"
do
	echo "Parameter #$count:$param"
	count=$[ $count + 1 ]
done
