#!/bin/bash
#print the last 10 lines of a file
sed '{
:start
$q
N
11,$D
b start
}' $1
