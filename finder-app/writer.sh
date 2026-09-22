#!/bin/sh
# writer.sh - writes a string to a file
# Usage: writer.sh filesname writestr

if [ $# -ne 2 ]
then
	echo "Error: expected 2 arguments, got $#"
	echo "Usage: $0 filesname writestr"
	exit 1
fi

writefile=$1
filepath=$(dirname "$writefile")
writestr=$2

if [ ! -d "$filepath" ]
then
	mkdir -p "$filepath"
fi

echo "$writestr" > "$writefile"
exit 0
