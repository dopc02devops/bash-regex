#!/bin/bash

: << 'END_COMMENT'
Parameters are variables defined by a function, method, or command that specify the inputs it expects
Arguments are the actual values or data you provide when calling that function, method, or command
$0 represents what is passed on terminal eg the file name itself
$@ is a special variable that represents all the arguments passed to a script or a function

$@ separate words at command line
$* one string at command line

END_COMMENT

# This is useful when creating a user. You provide username then shift and provide password
while test $# -gt 0;
do
   echo "Number of params: $#"
   echo "Params 1: $1"
   echo "Params 2: $2"
   echo "Params 3: $3"
   shift # reduce positional params so as not to end up in infinite loop
done
