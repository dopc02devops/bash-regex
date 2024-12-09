#!/bin/bash

: << 'END_COMMENT'
sed is commonly used for finding, replacing, inserting, or deleting text in files or streams
END_COMMENT

# Replace the first instance of "hello" with "world" on each line
sed 's/hello/world/' data.txt
# Replace all instances of "hello" with "world" on each line
sed 's/hello/world/g' data.txt
# Replace "hello" with "world" and save changes
sed -i 's/hello/world/' data.txt
# sed '2d' file.txt
sed '2d' data.txt
# Delete lines matching a pattern
sed '/""/d' data.txt
# Append "New line hellow world hellow world" after line 3
sed '3 a\
New line hellow world hellow world' data.txt
# Replace text between patterns "start" and "end" with "replacement"
sed '/start/,/end/s/.*/my new replacement/' data.txt