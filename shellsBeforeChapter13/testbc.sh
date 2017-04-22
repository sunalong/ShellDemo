#!/bin/bash
var1=10;
var2=11;
var3=`bc<<EOF
scale=3
a=$var1/3
b=$var2/3
a+b
EOF`
echo var3:$var3
var4=`echo "scale=4; 1/3" | bc`
echo var4:$var4
var5 =`echo "scale=5; $var3+$var4" |bc`
echo var5:$var5
var6 = $var4 + $var3
echo var6:$var6
#the only numbers the bash shell can handle are integers
#bc fool the shell into storing a floating-point value
#in a variable as a string value.
