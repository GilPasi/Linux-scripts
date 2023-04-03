#!/bin/bash

#Heba Abu-Kaf ________ Gil Pasi 206500936
path="$1"
suffix="$2"
value="$3"

	if [ -n "$1" ] && [ -n "$2" ] &&  [ -n "$3" ];
		then
		files=$(grep -wr $value --include="*.$suffix" $path)
		#Get the words  from all the  relevant
		#files in the given path.
		
		echo $files | sort
	else

		echo "not enough arguments"
	fi






