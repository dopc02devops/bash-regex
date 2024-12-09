
#!/bin/bash

# You can use trap to catch errors and perform specific actions (like cleanup) before exiting.

# Define a cleanup function
cleanup() {
    echo "An error occurred. Cleaning up..."
    docker stop $(docker ps -q)
    docker rm $(docker ps -aq)
    echo "Removing all running containers..."

}

# Set up trap to call the cleanup function on any error
trap cleanup ERR

# Delete directory command will fail
rm -r test

# If statement
# shellcheck disable=SC2181
if [[ $? -eq 0 ]]; then
  echo "Command success with status_code $?"
else
  echo "Command failed with status_code $?"
fi