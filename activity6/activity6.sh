#!/bin/sh

while true
do
	read -p "Enter your first number: " inputA
	echo $inputA | grep [0-9] > /dev/null
	exit=$(echo $?)
	echo $inputA | grep [a-z] > /dev/null
        exit2=$(echo $?)
        echo $inputA | grep [A-Z] > /dev/null
        exit3=$(echo $?)
        if [[ ($exit == 0 && $exit2 != 0 && $exit3 != 0) ]]
	then
		read -p "Enter your second number: " inputB
		echo $inputB | grep [0-9] > /dev/null
		exit4=$(echo $?)
		echo $inputB | grep [a-z] > /dev/null
		exit5=$(echo $?)
        	echo $inputB | grep [A-Z] > /dev/null
        	exit6=$(echo $?)
        	if [[ ($exit4 == 0 && $exit5 != 0 && $exit6 != 0) ]]
		then
			if [ $inputA -gt $inputB ]
			then
				diff=$(( inputA - inputB ))
				echo "True! Your first number is larger than your second by $diff."
				break
			else
				diff2=$(( inputB - inputA ))
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

