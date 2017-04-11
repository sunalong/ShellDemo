#!/bin/bash
var1=10.46
var2=43.67
var3=33.2
var4=71
var5=`bc<<EOF
scale=6
al = ( $var1 * $var2)
b1=($var3*$var4)
al + b1
EOF`

echo The final answer for this mess is $var5
