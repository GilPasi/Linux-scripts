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
	for entity in $path/*
	do
		if [ -f $entity ]
		then
			files+=($entity)
			#Collect all files
		fi
	done
	
	printf "\t_____The word $value is found______\n"
	grep -w $value ${files[@]} --include="*.$suffix" | sort
	#whole words = -w , all files = ${files[@]} ,
	#get only words with the relevant suffix = --include="*suffix"
	#evetually sort.
else
	echo "Not enough arguments"
fi





	





