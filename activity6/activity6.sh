#!/bin/sh

function numchecker()
{
        echo $input | grep [0-9] > /dev/null
        exit=$(echo $?)
        echo $input | grep [a-z] > /dev/null
        exit2=$(echo $?)
        echo $input | grep [A-Z] > /dev/null
        exit3=$(echo $?)
}

while true
do
	read -p "Enter your first number: " input
	var1=$(echo $input)
	numchecker
        if [[ ($exit == 0 && $exit2 != 0 && $exit3 != 0) ]]
	then
		read -p "Enter your second number: " input
		var2=$(echo $input)
		numchecker
        	if [[ ($exit == 0 && $exit2 != 0 && $exit3 != 0) ]]
		then
			if [ $var1 -gt $var2 ]
			then
				diff=$(( var1 - var2 ))
				echo "True! Your first number is larger than your second by $diff."
				break
			else
				diff2=$(( var2 - var1 ))
				echo "False! Your second number is larger than your first by $diff2."
				break
			fi
		else
			echo "That's not a number..."
			continue
		fi
	else
		echo "That's not a number..."
		continue
	fi
done

