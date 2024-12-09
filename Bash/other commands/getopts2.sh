#!/bin/bash

: << 'END_COMMENT'
getopts is a built-in command used for parsing positional parameters or command-line options in a shell script
END_COMMENT

mem(){
  # free -h | Mem
  top -l 1 | grep Mem
}

disk(){
#  df -t btrfs
  df -h
}

sys(){
  neofetch
}
while getopts 'mds:' OPTION;
do
  case "$OPTION" in
    m)
        mem
        ;;
    d)
        disk
        ;;
    s)
        sys
        ;;
    ?)
        echo "Invalid option"
        ;;
  esac
done
