echo - prints to terminal

touch - creates a file in directory

sh file_name - runs a file. sh stands for shell

bash file_name - run a file. bash stands for bourne again shell

which location - tells you location

#!path_to_interpreter - specify interpreter. called a "shebang"

flags: r - read. w - write. x - execute

chmod flag file_name - adds flag to location

VARIABLE_NAME=VALUE - define a variable. no spaces around "=". double quotes

$VARIABLE_NAME - use variable

read VARIABLE_NAME - accept user input

command man - man is short for manual

# - comment in bash

echo $\* - prints all arguments

echo $1 - prints first argument

/script.sh arg1 arg2 ... - pass arguments to script. spaces, not commas to
separate

if [[condition]] then statements elif statements else statements fi - == for
equals. space between condition and inner brackets. fi to end if block

conditions - -eq - equal. -ne - not equal. -lt - less than. -le less than or
equal. -gt - greater than. -ge - greater than or equal.

echo $? - prints exit status of last command. 0 means true. 1 means false

[[condition]]; echo $? - separate commands with semicolon

[[flag file_name]] - checks if file has flag

for (( i = x; condition; i++ )) do something done - looping

sleep number - pause for number of seconds

: ' content ' - multiline comment

$RANDOM - generates random number up to 32767. modulo to define range

(( calculation )) - variables don't need $ in parenthesis

$(( calculation )) - performs calculation in place

ARR=(values) - array

${ARR[1]} - get item at index. 0 indexed array

${ARR[@]} - all items in array

function_name() { statements } - define a function. don't need $ to call it

function_name argument - calls function with argument

until [[ condition ]]do statements done

~= - operator checks for pattern matching. quotes to recognize spaces

^h - checks to see if comparison starts with h

^h.+d$ - checks to see if comparison starts with h, has at least one character after it, and ends with d

\?$ - checks to see if comparison ends with ?