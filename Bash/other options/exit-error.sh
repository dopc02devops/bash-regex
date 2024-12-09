
#!/bin/bash

set -e   # Exit immediately if a command exits with a non-zero status


: << 'END_COMMENT'
The set -e option makes the script exit immediately if any command returns a non-zero exit status.
This is useful when you want to stop the script as soon as an error occurs.
As such, the print statement in the else block will not be executed because the script will exit when attempting to
delete the directory
END_COMMENT

# Delete directory command will fail
rm -r test

# If statement
# shellcheck disable=SC2181
if [[ $? -eq 0 ]]; then
  echo "Command success with status_code $?"
else
  echo "This won't run if the above command fails"
fi