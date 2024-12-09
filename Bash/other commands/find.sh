#!/bin/bash

: << 'END_COMMENT'
find command in Unix-like operating systems (including macOS and Linux) is a powerful tool for searching and managing
files and directories
END_COMMENT

# Find Only Files
find /path/to/search -type f
# Find Only Directories
find /path/to/search -type d
# Find Files by Extension
find /path/to/search -name "*.txt"
# Files Larger Than 100 MB
find /path/to/search -size -10k
# Modified Within the Last 7 Days
find /path/to/search -mtime -7
# To find files with specific permissions
find /path/to/search -perm mode
# Delete All .tmp Files
find /path/to/search -name "*.tmp" -exec rm {} \;
# Change Permissions of All .sh Files
find /path/to/search -name "*.sh" -exec chmod +x {} \;
# Find Empty Files
find /path/to/search -type f -empty

-exec: Execute a command on each file found
{}: Each time find identifies a file, it replaces {} with the file’s path.
\;: This signifies the end of the -exec command. The backslash (\) is necessary to escape the semicolon (;)
so that it’s passed correctly to find rather than being interpreted by the shell.
