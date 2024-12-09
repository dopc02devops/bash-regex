#!/bin/bash

: << 'END_COMMENT'
Parameters are variables defined by a function, method, or command that specify the inputs it expects
Arguments are the actual values or data you provide when calling that function, method, or command
$0 represents what is passed on terminal eg the file name itself
$@ is a special variable that represents all the arguments passed to a script or a function

$@ separate words at command line
$* one string at command line
date is a command that outputs the current date and time
+%s gives the number of seconds since the Unix epoch (January 1, 1970)
%N adds nanoseconds to the output (current nanoseconds within the second)

| is a pipe that passes the output of the date command to the next command
sha256sum computes a SHA-256 hash of the input. SHA-256 is a cryptographic hash function that produces
a 64-character hexadecimal string

head -c48 takes the first 48 characters from the output of sha256sum.
The result is a 48-character substring of the hash, which can be used as a random identifier or token
END_COMMENT

echo "You executed this command: $0"

# Number of parameters passed
NUMBER_OF_PARAMS=$#
echo "You supplied $NUMBER_OF_PARAMS on the command line"

# Params supplied are
echo "1: $1 2: $2 3: $3"

# Generate and display password for each param
for USER_NAME in "$@";
do
  sleep 0.5
  PASSWORD=$(date +%s%N | sha256sum | head -c48)
  echo "Username is $USER_NAME aand Password is $PASSWORD"
done