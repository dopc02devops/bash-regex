
#!/bin/bash

: << 'END_COMMENT'

END_COMMENT


# Ask user for name
read -p "enter your name: " ENTER_NAME

# Ask for password
read -p "Enter password: " ENTER_PASSWORD

# Create User
useradd -c "$ENTER_NAME" -m "$ENTER_PASSWORD"

# Set the password
echo "$ENTER_PASSWORD" | passwd --stdin "$ENTER_NAME"

# Delete user
sudo userdel -r "$ENTER_NAME"