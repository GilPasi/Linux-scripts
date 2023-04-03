#!/bin/bash 
# Heba Abu-Kaf 323980441 Gil Pasi 206500936

#Extract arguments
path=$1
suffix=$2
value=$3
wordscount=$4

if [[ "$4" == "" ]];then 
	echo "Not enough arguments"
	exit 1
fi

#Define  program variables
drs=($(find $path -type d | sort)) #First sort, sort directories
files=$(grep -r "$value" $drs --include="*$suffix"| tr "\n" "~" |sort) # ':' is a delimiter
						#sort the files as well
sen_start_found=false #This signifys if a sentnce is found 
path_i=0 #This marks the start of a full 
	#name of the sentence. Including its path.


for (( i=0; i <${#files}; i++));do
	for (( j=$i; j < ${#files}; j++));do

		if [[ ${files:$j:1} == "~" ]];then
			#Tilda is the sign if the end of a sentence
			cur_len=$(echo ${files:$i+1:$j-$i-1} | wc -w)
			#Count the words as requested
			
			if [[ $cur_len -eq $wordscount ]];then
				echo  "${files:$path_i:$j-$path_i}"|tr -d "~"
			fi
			
			path_i=$j #Update the path index
			i=$j	  #Update the name index
			((j++))
			sen_start_found=false
		fi
		
		if [[ (${out:$j:1} == ":")&&( $sen_start_found ) ]]
		then
		#':' signifies the start of a sentence
			sen_start_found=true
			i=$j
		fi
	done
done





