## Shell scripting 

### Level j

**Instructions:**

For a given file named `examples.txt`, find the most present firstname in the list, with the number of times it appears.

If the file is missing, a message must be print and program must exit with a non-zero status code.

**Expectations:**

When I run the shell script with the filename as parameter
Program should output the firstname with the number of times

Example :
```bash
$ ./firstnames.sh examples.txt
output:
Firstname 'Alice' appeared 13 times
```

When the filename is not defined as first parameter  
It should output an error message  
And if the filename is given as paremeter  
And file is not found  
It should output an error message  

```bash
$ ./firstnames.sh
output:
File not found
Program exiting...
```


**Hint:** 
* Your script must have the execution rights
* You can use functions


### Level z
You notice that your colleague does the same action in his/her terminal every day. Help her/him by writing a shell script.

**Instructions:**
* Create a function `mkcd` in the file `mkcd.sh` in the level-z directory which do the following:
    * Create a directory with the username which do the following : `foobar-folder` (here foobar is an example) 
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
* Script should have write, read, execution rights from all user on server.
