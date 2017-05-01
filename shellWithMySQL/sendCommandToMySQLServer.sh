#!/bin/bash
#send a command to the mysql server
MYSQL=$(which mysql)
$MYSQL mytest -u testMe -e 'select * from employees'
