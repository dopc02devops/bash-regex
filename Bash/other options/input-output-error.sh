
#!/bin/bash


: << 'END_COMMENT'

END_COMMENT

# Define variables for file paths
FILE="/temp/data1"
NEWFILE="/temp/data2"

# Redirect STDOUT to a file
echo "glib	2.82.2	Core application library for C
       gnutls	3.8.4	GNU Transport Layer Security (TLS) Library
       json-c	0.18	JSON parser for C
       libgcrypt	1.10.3	Cryptographic library based on the code from GnuPG
       libiscsi	1.20.0	Client library and utilities for iscsi
       libssh2	1.11.1	C library implementing the SSH2 protocol
       readline	8.2.13	Library for command-line editing
       yajl	2.1.0	Yet Another JSON Library
       gettext	0.22.5	GNU internationalization (i18n) and localization (l10n) library" > FILE



# Output first line of a file
head -n1 "$FILE" > "$NEWFILE"
cat "head is: $NEWFILE"

# Output last line of a file
tail -n1 "$FILE" > "$NEWFILE"
cat "tail is: $NEWFILE"

# Redirect STDIN to a program
read LINE < $NEWFILE
echo "Line contains: ${LINE}"