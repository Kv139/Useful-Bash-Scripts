#!/bin/bash
# nanobash.sh: Last Modified: 11/27/2022
# Create the opening Header for a Bash script:

if [ $# = 0 ]
then
	echo "Please enter the bash shell script you want edited" 
	read file
else
	file=$1
fi

if [ ! -e $file ]
then
	echo "#!/bin/bash" >> $file
	echo "" >> $file
	echo -n "#$file - Kay Vargas" >> $file
	date >> $file
	echo  "" >> $file
fi

nano $file


