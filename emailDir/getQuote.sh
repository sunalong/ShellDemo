#!/bin/bash
#get a daily Inspirational Quote
quoteUrl=http://www.quotationspage.com/qotd.html
#check url validity
checkUrl=$(wget -nv --spider $quoteUrl 2>$1)
if [[ $checkUrl == *error404* ]]
then
	echo "Bad web address"
	echo "$quoteUrl invalid"
	echo "Exiting script..."
	exit
fi
#download web site's Information
wget -o /tmp/quote.log -O /tmp/quote.html $quoteUrl
#extract the desired data
sed 's/<[^>]*//g' /tmp/quote.html | 
grep "$(date +%-d,' '%Y)" -A10 | 
sed 's/>//g'| 
sed '/&nbsp;/{n;d}' |
#gawk 'BEGIN{FS="&nbsb;"} {print $1} '|
tee /tmp/dailyQuote.txt > /dev/null
exit
