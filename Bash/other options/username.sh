
#!/bin/bash

# Using double quotes
echo "Your UID is: $UID"

# Storing the output of a command to a variable
USER_NAME=$(id -nu)

echo "Your USER_NAME is: $USER_NAME"

# If statement
# Using double brackets makes evaluation of expression much simpler
if [[ $UID -eq 0 ]]; then  # -ne: not equal
  echo "You are the root user"
else
  echo "You are not the root user. Your USERNAME is: $USER_NAME and UUID is: $UID"
fi