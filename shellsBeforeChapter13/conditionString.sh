#!/bin/bash
#testing string comparisons
testuser=root
if [ $USER = $testuser ];then
        echo Welcome $testuser
fi

if [ -n $USER ];then
        echo $USER has a length greater than zero.
fi
emptyStr=
if [ -z $emptyStr ];then
        echo emptyStr has a length of zero.
fi
