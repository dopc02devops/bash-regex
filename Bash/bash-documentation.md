

- When u install fish, it uses bash and not zsh
  - In fish, running command: 
    help (Opens up the introduction page)
    help test (Opens up test - perform tests on files and text)
- Fish login as root user
    - sudo fish
    - exit
  ###############
# Permissions
###############
- -rw-r--r--@  1 elvisngwesse  staff   40 Nov  1 04:34 demo01.sh
    First 3 xters represent the user, next three the group, last three any system user
- -rwxr-xr-x@  1 elvisngwesse  staff   40 Nov  1 04:34 demo01.sh
    Add executatble permission to the user: chmod 755 demo01.sh

###############
# Rename file
###############
- mv demo01.sh demo02.sh

###############
# Using quotes
###############
- Single Quotes ('): Used to define a string as a literal. This means that the content inside single quotes is taken 
  "as-is," without evaluating any variables or expressions. So, things like variable expansion ($variable) or escape 
  sequences (\n) won't work inside single quotes.
- Double Quotes ("): Allow for interpolation, or expansion of variables and expressions within the string. When you use 
  double quotes, the language interprets special characters and variables inside the string, allowing you to include 
  things like newline characters (\n) or embedded variables (${variable}).

    # Using single quotes
    echo 'Hello $USER'  # Outputs: Hello $USER
    # Using double quotes
    echo "Hello $USER"  # Outputs: Hello followed by the actual username
