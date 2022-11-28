#!/bin/bash
# backup-to.sh: Last Modified: 09/21/2022
# Backup all files in a choosen directory whether 
# given as a command line argument or standard input

if [ $# -eq 0 ]
then
	echo Which directory would you like these files to be back up to?
	read location
	if [ ! -e $location ]
	then
		mkdir $location
		echo "Directory $location has been created" 
	fi
	files=`ls`
	for i in $files
	do
		if [ -f $i ]
		then
		cp $i $location
		echo "$i has been backed up in $location"
		fi
	done
	echo Here is the contents of $location
	ls $location
elif [ ! -e $1 ]
	then
	mkdir $1
elif [ ! -d $1 ]
	then
	echo "$1 is not a directory" 
	exit 1
else
	 files=`ls`
	 for i in $files 
	 do
		if [ -f $i ]
		then
		cp $i $1
		echo "$i has been backed up in $!"
		fi
	 done
	 echo Here is the contents of $1
	 ls $1
fi



