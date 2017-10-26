#!/bin/bash
exec 0<youtubefit.txt
count=1
while read line
do
	echo "----Line #$count :before download $line"
        youtube-dl $line 	
	echo "++++Line #$count :after download  $line"
	count=$[ $count + 1 ]
done
