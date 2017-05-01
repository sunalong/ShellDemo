#!/bin/bash
#output as a xml
$(which mysql) mytest -u testMe -Xe 'select * from employees where empid=1'
