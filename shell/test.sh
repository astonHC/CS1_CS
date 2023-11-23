#!/bin/bash

echo Greetings.

# READ'S THE PROMPT PROVIDED INTO THE TERMINAL
# STORES IT AS A VARIABLE

read -p "Enter Your Name: " NAME 
echo "Welcome: $NAME"

# A MORE VERBOSE MEANS OF THE ABOVE LINE 
# ALBEIT THIS READS THE NAME ASYNCHRONOUSLY

echo -n "Enter your Name: "
read NAME
echo "Hello: $NAME"
