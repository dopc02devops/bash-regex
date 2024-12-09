#!/bin/bash

: << 'END_COMMENT'
cut command in Unix-like systems is used to extract specific columns or fields from each line of
a file or standard input

-f: Select fields (used with a delimiter).
-d: Specify the delimiter used to separate fields (used with -f).
-c: Select characters by position.
--complement: Select all parts except the specified fields or characters.
END_COMMENT

# Extract the First and Third Fields: Use -d to specify the delimiter and -f to select the fields
cut -d ',' -f 1,3 data.txt
# Extract Characters 1-5
cut -c 1-5 info.txt
# To extract all fields except specific ones, use --complement
cut -d ',' --complement -f 2 data.txt
# Extracting Usernames from /etc/passwd
cut -d ':' -f 1 /etc/passwd


