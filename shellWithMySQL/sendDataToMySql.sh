#!/bin/bash
#send data to the table in the mysql database
MYSQL=$(which mysql)
if [ $# -ne 4 ]
then
	echo "Usage:参数为：empid lastname firstname salary"
else
	statement="insert into employees values($1,'$2','$3',$4)"
	$MYSQL mytest -u testMe <<EOF
	$statement
EOF
#在指定结束字符串时，它必须是该行唯一的内容，并且该行必须以此字符开头

	if [ $? -eq 0 ]
	then
		echo data successfully added!
	else
		echo problem adding data
	fi
fi
