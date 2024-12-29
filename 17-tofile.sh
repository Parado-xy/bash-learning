#!/bin/bash

if [ $# -lt 2 ]; then
    echo "No arguments provided or too few arguments"
    echo "Syntax: ./tofile.sh <text> <outputFileName>"
    exit 1
elif [ $# -gt 2 ]; then
    echo "Too many arguments provided"
    echo "Syntax: ./tofile.sh <text> <outputFileName>"
    exit 1
fi

TEXT=$1
OUTPUT=$2
echo $TEXT > $OUTPUT
