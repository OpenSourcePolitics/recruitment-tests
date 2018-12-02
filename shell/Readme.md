## Shell scripting

### Level z
You notice that your colleague does the same action in his/her terminal every day. Help her/him by writing a shell script.

**Instructions:**
* Create a function `mkcd in the file `mkcd.sh` in the level-z directory which do the following:
    * Create a directory with the username wich do the following : `foobar-folder` (here foobar is an example) 
    * Create a .gitkeep file in the newly create directory.
    * Change the shell working directory.

**hint:**
* Use `whoami` to print username

### Level k
You're in charge of writing a welcome / Bye script for one of our servers. 

**Instructions:**
* Create a script `welcome_bye.sh` 
    * with input "hello" output should be `Welcome <username>`
    * with input "bye" output should be `Byebye <username>`
    * with no input, output should be "No argument provided, script requires argument" and exit 1
* Script should have right, read, execution rights from all user on server.