#! /bin/bash
#更改脚本所在目录下的有规律的文件名
#保存IFS
SAVEIFS=$IFS
#改变IFS，以便识别文件名中的空格
IFS=$(echo -en "\n\b")
echo 改变后的IFS:
echo "$IFS" | od -t x1
dir=$(ls `dirname $0`)
for file in $dir
do
#	echo FN:$file
	if [ -d $file ]
	then
		echo $file is a direcory!
	elif [ -f $file ]
	then 
		#echo $file is a file.
		if [[ ${file:0:4} -eq "cn" ]]
		then
			echo subName is:${file:11:50}
			mv $file ${file:11:50}
		fi
	fi
done
#恢复IFS
IFS=$SAVEIFS
#输入IFS
echo "$IFS"|od -t x1
