#!/bin/bash
echo -n "Please enter a whole number: "
read VAR
echo "Your number is $VAR"
if [ $VAR -gt 100 ]
then
	echo "Its greater than 100"
elif [ $VAR -lt 100 ]
	echo "Its lesser than 100"
else
	echo "It's exactly 100"
fi
echo bye!


