#!/bin/sh

while true
do
	read -p "Please enter a number: " number
	echo $number | grep [0-9] > /dev/null
	exit=$(echo $?)
	echo $number | grep [a-z] > /dev/null
	exit2=$(echo $?)
	echo $number | grep [A-Z] > /dev/null
        exit3=$(echo $?)
	if [[ ($exit == 0 && $exit2 != 0 && $exit3 != 0) ]]
	then
		echo $number | rev
		break
	else
		echo "That's not a number..."
		continue
	fi
done
