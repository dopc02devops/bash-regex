#!/bin/bash

: << 'END_COMMENT'
awk is often used to manipulate and analyze text files
END_COMMENT

# Print the second and fourth columns in a comma-separated file
awk -F ',' '{ print $1}' data.txt
# Print lines that contain the word "ERROR"
awk '/ERROR/' logfile.txt
# Print the second field of lines where the first field equals "Alice"
awk -F ',' '$2 == "30" { print $3 }' data.txt
# Count the Number of Lines in a File
awk 'END { print NR }' data.txt
# Print Lines Where Field Matches
awk -F ',' '$3 == "Engineer"' data.txt

git --version | awk '{print $3}'