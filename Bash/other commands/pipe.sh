#!/bin/bash

: << 'END_COMMENT'
| is used to connect the output of one command as the input to another command
command1 | command2
END_COMMENT

# List all running processes and filter for the keyword "bash"
ps aux | grep bash
# List files in the current directory and sort them by name
ls -l | sort

cat data.txt | awk -F ','  '{print $2}'