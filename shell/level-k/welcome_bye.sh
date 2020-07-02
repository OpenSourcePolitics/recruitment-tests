#!/bin/bash

if [ $# == 0 ]
then
    echo "No argument provided, script requires argument"
    exit 1
elif [ $1 == "hello" ]
then
    echo "Welcome `whoami`"
elif [ $1 == "bye" ]
then
    echo "Byebye `whoami`"
fi
