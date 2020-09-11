#!/bin/bash

case $1 in
"hello")
echo Welcome $(whoami)
;;
bye)
echo Byebye $(whoami)
;;
*)
echo "No argument provided, script requires argument"
exit 1
;;
esac

