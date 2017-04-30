gawk 'BEGIN{x="testing";print toupper(x); print length(x)}'

gawk 'BEGIN{
var["a"]=1
var["g"]=2
var["m"]=3
var["u"]=4
asort(var,test)
for(i in test)
	print "Index:",i," -- value:",test[i]
}'

gawk 'BEGIN{ FS=","} {
split($0,var)
print var[1],var[5]
}' data1
