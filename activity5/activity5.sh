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
	read -p "Please enter a number: " input
	numchecker
	if [[ ($exit == 0 && $exit2 != 0 && $exit3 != 0) ]]
	then
		echo $input | rev
		break
	else
		echo "That's not a number..."
		continue
	fi
done
