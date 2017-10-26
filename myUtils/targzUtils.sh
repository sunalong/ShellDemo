#!/bin/bash
#压缩脚本所在目录下的所有文件夹
dir=$(ls `dirname $0`)
for file in $dir
do
	if [ -d $file ]
	then
		tar -zcf $file.tar $file
		echo --have tar $file to a $file.tar
	elif [ -f $file ]
	then
		echo $file is a file
	fi
done
