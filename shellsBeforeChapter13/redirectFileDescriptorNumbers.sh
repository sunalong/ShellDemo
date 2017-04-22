#!/bin/bash
# storing STDOUT,then coming back to it.
exec 10>&1
exec 1>testNumberout

echo "This should store in the output file"
echo "along with this line"
echo "fuck this line" >&10

exec 1>&10
echo "Now things should be back to normal"
lsof -a -p $$ -d 0,1,2,10
