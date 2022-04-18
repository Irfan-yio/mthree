#!/bin/sh

read -p "Enter a file name: " input
if [ -f $input ]
then
	(exit 11)
	echo "Error code: $?"
else
	touch $input
fi


