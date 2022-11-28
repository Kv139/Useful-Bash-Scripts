#!/bin/bash
# rm-empties.sh: Last Modified: 11/27/2022
# Clear all empty files in the current directory

files=`ls`

for i in $files
do
	if [ ! -s $i ]
	then
	rm -i $i
	fi
done

