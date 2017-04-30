gawk 'BEGIN{
date=systime()
day=strftime("%A, %B %d, %Y",date)
print day
}'
