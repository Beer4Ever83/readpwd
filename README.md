# readpwd
a bash library to read passwords from stdin while echoing characters on stdout

# usage
~~~~
usage:
    source ./readpwd && readpwd [-p <prompt>] [-e <echo_sequence>] <dest_variable>
 
readpwd reads a password from stdin, echoes a sequence of characters on
stdout for each keystroke and saves the entered password in <dest_variable>
 
options:
    -p <prompt>         an optional prompt to be printed on screen. The default
                        is "Password: "
    -e <echo_sequence>  an optional sequence of characters that will be printed
                        on screen at every keystroke. The default is "*"
~~~~
