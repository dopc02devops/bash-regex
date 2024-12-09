#!/bin/bash

: << 'END_COMMENT'
getopts is a built-in command used for parsing positional parameters or command-line options in a shell script
END_COMMENT

log() {
  echo "Verbose mode: $verbose"
  echo "Output file: $output"
}
verbose=0
output=""

while getopts "vo:" opt; do
    case "$opt" in
        v)
            verbose=1
            ;;
        o)
            output="$OPTARG"
            ;;
        *)
            echo "Usage: $0 [-v] [-o output_file]"
            exit 1
            ;;
    esac
done

# After processing options, print the results
log


#while getopts "ab:" opt; do
#    case "$opt" in
#        a)
#            echo "Option A"
#            ;;
#        b)
#            echo "Option B with argument: $OPTARG"
#            ;;
#        *)
#            echo "Invalid option"
#            ;;
#    esac
#done
#
## Access non-option arguments (remaining after options)
#shift $((OPTIND - 1))
#echo "Remaining arguments: $*"




