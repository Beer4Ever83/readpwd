#!/usr/bin/env bash

function print_password() {
    local password="$1"
    echo
    # print the entered password on stdout (surrounded by quotes)
    echo "Password: \"${password}\""
    # print the entered password on stdout (converted to hexadecimal)
    echo "Password in hex:" $(echo -n "${password}"|xxd -p -c 256)
}

# loading the readpwd library
source ./readpwd

# print the help of the command
readpwd -h

# use readpwd with default options and provide an hard-coded password on stdin
# the provided password will be like the user has typed
# "test passworD[backspace]d" (quotes excluded)
readpwd mypassword << HEREDOC
test passworD$(echo $'\x7f')d
HEREDOC
print_password "$mypassword"

# use readpwd with custom prompt and echo sequence and wait for the user to
# enter a password manually
readpwd -p "Now write your password manually here: " -e "[]" mypassword
print_password "$mypassword"

exit 0
