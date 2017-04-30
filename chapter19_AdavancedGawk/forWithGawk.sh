gawk '{
total = 0
for (i = 1;i<4;i++){
	total+=$i
}
avg=total/3
print "average:",avg
}' $1
