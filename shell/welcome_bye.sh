#/bin/bash

user=`whoami`
welcome="Welcome $user" 
bye="Byebye $user" 
error="No argument provided, script requires argument"

read prompt

if [[ $prompt = 'hello' ]]; then
	echo $welcome

elif [[ $prompt = 'bye' ]]; then
	echo $bye

else
	echo $error

fi