#!/bin/sh

DATE=$(date +"%d-%m-%y")
count=0

if [ -f "usernumbers.$DATE" ]
then
        rm usernumbers.$DATE
        touch usernumbers.$DATE
else
        touch usernumbers.$DATE
fi

echo "Please enter your 5 lottery numbers"

while true
do 
	read draw
	if [[ ($draw -ge 1 && $draw -le 50) ]]
	then
		grep -w $draw lottery.$DATE > /dev/null
		exit=$(echo $?)
		if [[ ($exit == 0) ]]
		then
			((count++))
			echo "You got a matching number!"
		else
			echo "No matches unfortunately..."
		fi
		echo $draw >> usernumbers.$DATE
		num=$(wc -l usernumbers.$DATE | awk '{print$1}')
		if [ $num -gt 4 ]
		then
			echo "Please enter your bonus ball number"
			read bonus
			if [[ ($bonus -ge 1 && $bonus -le 10) ]]
			then
				grep -w $bonus lottery.$DATE > /dev/null
				exit=$(echo $?)
				if [[ ($exit == 0) ]]
				then
					((count++))
					echo "You got a matching number!"
				else
					echo "No match unfortunately..."
				fi
				echo $bonus >> usernumbers.$DATE
				echo "You got $count matches. Thank You For Playing!"
				break
			else
				echo "That number is not within range."
				continue
			fi
		else
			continue
		fi
	else
		echo "That number is not within range."
fi
done

