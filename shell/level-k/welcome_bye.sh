#!/bin/bash

if [ "x$1" == "xhello" ]; then
	echo Welcome $(whoami)
elif [ "x$1" == "xbye" ]; then
	echo Byebye $(whoami)
elif [ "x$1" == "x" ]; then 
	echo "No argument provided, script requires argument"
	exit 1
fi


