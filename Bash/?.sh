
#!/bin/bash

: << 'END_COMMENT'
 Bash uses the last executed command to display the exit status
  ? has several uses
 1) ? symbol acts as a wildcard representing exactly one character in filenames or paths ls file?.txt
 2) The special variable $? holds the exit status of the last executed command
 3) In [[ ... ]] conditionals, ? can be used as a single-character wildcard in pattern matching
 var="cat"
 if [[ $var == c?t ]]; then
    echo "Match found!"
 fi

 /dev/null is a special file in Unix-like operating systems that discards all data written to it
 ls /non_existent_directory >/dev/null 2>&1  # Suppress both stdout and stderr
END_COMMENT



# Delete directory command will fail
rm -r test

# 0 means success, 1 means failure

# If statement
# shellcheck disable=SC2181
if test $? -eq 0; then
  # By default print and echo commands are sent to standard output
  echo "Command success with status_code $?"
else
  # Redirects this output to file descriptor 2, which represents stderrin Unix-like systems.
  # shellcheck disable=SC2116
  # The bellow $() opens up a sub shell
  # error_message=$(echo "Command failed with status_code $?" 2>&1 >/dev/null) # discard both 2 and 1
  # error_message=$(echo "Command failed with status_code $?" >&2 > text.txt) # Creates file and adds error message
  # error_message=$(echo "Command failed with status_code $?" >&2 >> text.txt) # appends error message to file
  error_message=$(echo "Command failed with status_code $?" >&2)
  # Export the variable
  export error_message
fi