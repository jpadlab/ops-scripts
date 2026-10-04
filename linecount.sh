#!/bin/bash
# Count the lines in a file. Usage: ./linecount.sh <filename>

if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>" >&2
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Error: '$1' not found" >&2
    exit 1
fi

wc -l < "$1"
