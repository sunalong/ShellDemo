gawk '{
total = 0
i = 1
while (i < 4){
	total += $i
	if(i == 2)
		break
	i++
}
avg = total / 2
print "the average:",avg
}' $1
