#!/bin/bash 
# Heba Abu-Kaf 323980441 Gil Pasi 206500936

#Extract arguments
path=$1
suffix=$2
value=$3
files=()

if [ -n "$1" ] && [ -n "$2" ] &&  [ -n "$3" ];
#Avoid not enough arguments
then
	cd $path 
	ls *.$suffix |xargs grep -w $value|sort
else
	echo "Not enough arguments"
fi





	





