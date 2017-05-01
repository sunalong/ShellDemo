#!/bin/bash
#extract the current weather for shanghai

URL="https://www.yahoo.com/news/weather/china/shanghai/shanghai-2151849"
lynx=$(which lynx)
tmpfile=$(mktemp tempXXXXXX)
#tmpfile=`pwd`/data
$lynx -dump $URL >$tmpfile
conditions=$(cat $tmpfile | sed -n '/Change location/{n;p}')
max=$(cat $tmpfile | sed -n '/Change location/{n;n;p}')
min=$(cat $tmpfile | sed -n '/Change location/{n;n;n;p}')
curr=$(cat $tmpfile | sed -n '/Change location/{n;n;n;n;p}')
rm -f $tmpfile
echo "current conditions:$conditions"
echo The temp outside max:$max  min:$min  current:$curr
