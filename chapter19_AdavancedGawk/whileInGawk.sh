gawk '{
	total = 0
	i = 1
	while (i < 4){
		total += $i
		i++
	}
	avg = total / 3
	print "Average:",avg
}' $1
