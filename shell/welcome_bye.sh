
function hello_bye(){

echo "Entrer hello ou bye"
 name=$(/usr/bin/whoami)

 read var 

if [ $var = "hello" ]
 then
  echo "welcome $name"

 elif [$var = "bye"]
 then
 echo "byebye $name"

elif [$var = ""]
then
 echo "No argument provided, script requires argument"
fi 
}

hello_bye
