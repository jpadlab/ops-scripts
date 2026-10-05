#!/bin/bash
# Count the lines in a file. Usage: ./linecount.sh <file>... 
# Processes each file passed as an argument until error

if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>" >&2
    exit 1
fi

total=0

for file in "$@"; do
    if [ ! -f "$file" ]; then
        echo "Error: '$file' not found" >&2
        exit 1
    fi

    count=$(( $(wc -l < "$file") ))
    echo "$file: $count"
    total=$(( total + count ))
done

echo "Total: $total"