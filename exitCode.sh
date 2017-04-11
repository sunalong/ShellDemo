#!/bin/bash
#testing the exit status
var1=10
var2=20
var3=$[$var1+var2]
echo The answer is $var3
exit 5
#after execute this sh,execute the command :echo $?
#to catch the sh exit code
