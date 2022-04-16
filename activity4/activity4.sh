#!/bin/sh

while true
do
	read -p "Please enter you password: " password
	char=$(echo $password | wc -m)
	if [ $char -gt 8 ]
	then
		echo $password | grep [a-z] > /dev/null
		exit=$(echo $?)
		if [[ ($exit == 0) ]]
		then
			echo $password | grep [A-Z] > /dev/null
			exit2=$(echo $?)
			if [[ ($exit2 == 0) ]]
			then
				echo $password | grep [0-9] > /dev/null
				exit3=$(echo $?)
				if [[ ($exit3 == 0) ]]
				then 
					echo "Password accepted."
					break
				else
					echo "The password should contain at least one number."
					continue
				fi
			else
				echo "The password should contain atleast one uppercase letter."
				continue
			fi
		else
			echo "The password should contain at least one lowercase letter."
			continue
		fi
	else
		echo "The password should be 8 or more characters."
		continue	
	fi
done
