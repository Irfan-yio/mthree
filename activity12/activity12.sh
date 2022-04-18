#!/bin/sh

read -p "Enter the first file name: " inputA
while true
do
if [ -f $inputA ]
then
	read -p "Enter the second file name: " inputB
	if [ -f $inputB ]
	then
		echo $(diff -q $inputA $inputB) > results.txt
		grep [a-z] results.txt > /dev/null
		exit1=$(echo $?)
		if [ $exit1 == 0 ]
		then
			echo "Files $inputA and $inputB differ."
			break
		else
			echo "Files $inputA and $inputB are identical."
			break
		fi
	else
		echo "There is no file with that name."
		continue
	fi
else
	echo "There is no file with that name."
fi
done

