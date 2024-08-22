#!bin/bash

# this is the example to read input from prompt farmat through cmd 

echo "Please enter your username :"
read -s username
echo "your entered username is :$username"

echo "Please enter your password"
read -s pwd #if you mentioned  -s it will hide the entered details
echo "your entered password is :$pwd"
