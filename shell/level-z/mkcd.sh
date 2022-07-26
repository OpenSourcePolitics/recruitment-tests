if [ $# ]
then
  # Use whoami to get the current user's name and stock it to the variable $USER
  USER=$(whoami)
  # Use the variable $USER to create a directory with the name of the current user
  echo "Creating directory $USER"
  mkdir "${USER}_directory" && cd "${USER}_directory" && touch .gitkeep
fi