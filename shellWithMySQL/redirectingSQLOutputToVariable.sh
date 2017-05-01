#!/bin/bash
#redirecting sql output to a variable
MYSQL=$(which mysql)
dbs=$($MYSQL mytest -u testMe -Bse 'show databases')
for db in $dbs
do
	echo $db
done
