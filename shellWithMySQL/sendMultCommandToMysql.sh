#!/bin/bash
#send multiple commands to mysql
MYSQL=$(which mysql)
$MYSQL mytest -u testMe <<EOF
show tables;
select * from employees where salary > 4000;
EOF
