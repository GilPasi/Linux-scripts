#!/bin/bash 
# Heba Abu-Kaf 323980441 Gil Pasi 206500936

#Extract arguments
path=$1
suffix=$2
value=$3
files=()

if [ -n "$1" ] && [ -n "$2" ] &&  [ -n "$3" ] &&  [ -n "$4" ] ;
#Avoid not enough arguments
then
	cd $path
	touch tmp.txt
	ls *.$suffix > tmp.txt
	
	a=$(ls *.$suffix)
	
	b=$(echo $a | xargs grep -r $value)
	echo "COM"
	echo $a | xargs grep -r $value
	echo $b > tmp.txt
	echo "FILE"
	cat tmp.txt

#	| tr "\n" "~">tmp2.txt



	rm tmp.txt



else
	echo "Not enough arguments"
fi





	





