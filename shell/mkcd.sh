function mkcd(){

name=$(/usr/bin/whoami)

mkdir $name

cd $name

touch .gitkeep


}

mkcd
