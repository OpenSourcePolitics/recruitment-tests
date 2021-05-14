#!/bin/bash
if [ -z ${1+x} ];
then
    echo "No argument provided, script requires argument"
else
    name="$(whoami)"
    if [ $1 == "hello" ];then
	echo "Welcome $name"
    elif [ $1 == "bye" ]; then
	echo "Byebye $name"
    else
	echo "Wrong argument provided"
    fi
fi
