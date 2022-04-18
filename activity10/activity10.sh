#!/bin/sh

read -p "Enter the file name: " input
while true
do
if [ -f $input ]
then
	echo "A file with that name already exists. Exit code: $?"
	break
else
	read -p "Enter the number of lines to write: " inputA
	echo $inputA | grep [0-9] > /dev/null
        exit=$(echo $?)
        echo $inputA | grep [a-z] > /dev/null
        exit2=$(echo $?)
        echo $inputA | grep [A-Z] > /dev/null
        exit3=$(echo $?)
        if [[ ($exit == 0 && $exit2 != 0 && $exit3 != 0) ]]
        then
		touch $input
		num=$(echo $inputA)
		for (( i=1; i<=$num; i++ ))
		do
			echo $RANDOM >> $input
		done
		break
	else
		echo "That is not a number."
		continue
	fi
fi
done
