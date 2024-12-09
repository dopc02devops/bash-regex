#!/bin/bash

: << 'END_COMMENT'
grep is used to search for a specific pattern of text in files or output from other commands
END_COMMENT

# Case-Insensitive Search (-i)
grep -i "pattern" data
cat ../examplefile.yaml | grep -i "Activate" >> data.txt
# Recursive Search (-r or -R)
cat ../examplefile.yaml | grep -r "Activate"
# Show Line Numbers (-n)
cat ../examplefile.yaml | grep -n "Activate"
# Count Matches (-c)
cat ../examplefile.yaml | grep -i -c "Activate"
# Display Only Matching Parts of the Line (-o)
cat ../examplefile.yaml | grep -0 "Activate"
# Search for Whole Words (-w)
cat ../examplefile.yaml | grep -w "Activate"
# Show Matching File Names Only (-l)
cat ../examplefile.yaml | grep -l "Activate" ../*
# Use Regular Expressions (-E)
cat ../examplefile.yaml | grep -E "(\w{5})?(:\//)\w+\.\w+(.|/)\w+(.|/)"