#!/bin/bash
if [ -z ${1+x} ];
then
    echo "No variable"
else
    filename=$1
    if test -f "$filename"; then
        tableau=()
        while read line; do
            tableau=( "${tableau[@]}" "${line%% *}" )
        done < $filename
        declare -A assTable
	for word in ${tableau[*]}; do
            count=0
	    for word2 in ${tableau[*]}; do
		if [ $word == $word2 ]; then
		    count=$((count+1))
		fi
	    done
	    assTable[$word]=$count
        done
	max=0
        for key in ${!assTable[@]}; do
	    if [ ${assTable[$key]} -gt $max ]; then
		max=${assTable[$key]}
		name=$key
	    fi
	done
	echo "Output"
	echo "Firstname '$name' appeared $max times"
    else
        echo "File doesn't exist"
    fi
fi
