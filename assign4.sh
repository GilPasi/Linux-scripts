#!/bin/bash

echo "hello world"

((sum=25+35))
echo $sum
valid=true
count=1

while [ $valid ]
do
	echo $count
	if [ $count -eq 5 ]
	then
		break
	fi
	((count++))
	done
	
	
