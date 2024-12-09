
#!/bin/bash

: << 'END_COMMENT'
"$@" expands to all the positional parameters (arguments) passed to a script or function, preserving each as a
separate quoted string.

#!/bin/bash
echo "Arguments passed to script: $@"
some_command "$@"

Each argument is treated as an individual, quoted string, which means it retains spaces and special characters
correctly if enclosed in "".

for arg in "$@"; do
    echo "Argument: $arg"
done

END_COMMENT


try() {
    "$@"   # Execute the command passed as arguments
}

catch() {
    echo "Command exited with status_code: $?"
}

# Delete directory command will fail
try rm -r test || catch "Failed to copy file"