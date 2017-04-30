gawk '{
total = 0
i = 1
do {
	total += $i
	i++
} while (total < 150)
print total
}' $1
