#!/bin/bash
# piping a loop to another command
for state in "North Dakota" Connecticut Illinois Alobama Tennessee
do
	echo "$state is the next place to go"
done | sort
echo "This completes out travels"
