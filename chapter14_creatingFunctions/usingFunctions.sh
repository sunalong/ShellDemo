#!/bin/bash
# using a function iin a script
function func1 {
	echo "This is an example of a function"
}
func2(){
	echo "This is anothor example of a function format"
}
count=1
while [ $count -le 3 ]
do
	func1
	func2
	count=$[ $count + 1 ]
done
