gawk '{
total = 0
for (i = 1;i<4;i++){
	total+=$i
}
avg=total/3
printf "average:%5.1f\n",avg
}' $1
