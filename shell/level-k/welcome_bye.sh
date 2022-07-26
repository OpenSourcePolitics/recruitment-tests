# If the first argument is "welcome", print the welcome message.
# If the first argument is "bye", print the bye message.
# Otherwise, print an error message.

if [ $# -eq 0 ]
then
  echo "Usage: $0 {welcome|bye}"
  exit 1
else
 USER=$(whoami)
  case $1 in
    welcome)
      echo "Hello there ${USER} !"
      ;;
    bye)
      echo "See you soon ${USER} !"
      ;;
    *)
      echo "Error: unknown argument"
      exit 1
      ;;
  esac
fi