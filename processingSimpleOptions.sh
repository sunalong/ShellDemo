#!/bin/bash
# extracting command line options as parameters
while [ -n "$1" ]
do
	case "$1" in
	-a) echo "Found the -a options";;
	-b) echo "Found the -b options";;
	-c) echo "Found the -c options";;
	*) echo "$1 is not an option";;
	esac
	shift
done
