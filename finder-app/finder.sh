#!/bin/sh
# finder.sh - search files in a directory for a matching string
# Usage: finder.sh filesdir searchstr

if [ $# -ne 2 ]
then
	echo "Error: expected 2 arguments, got $#"
	echo "Usage: $0 filesdir searchstr"
	exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]
then
	echo "Error: $filesdir is not a directory"
	exit 1
fi

numfiles=$(find "$filesdir" -type f | wc -l)
nummatches=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are ${numfiles} and the number of matching lines are ${nummatches}"

exit 0
