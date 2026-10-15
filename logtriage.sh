#!/bin/bash
#Summarize a log file by severity lvl. Usage: ./logtriage.sh <logfile> <level>

if [ $# -ne 2 ]; then 
    echo "Usage: $0 <logfile> <level>" >&2
    exit 1
fi

logfile="$1"
level="$2"

if [ ! -f "$logfile" ]; then 
    echo "Error: '$logfile' not found" >&2
    exit 1
fi

count=$(grep -cw "$level" "$logfile")
    echo "$level: $count"