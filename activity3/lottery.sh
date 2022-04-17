#!/bin/sh
DATE=$(date +"%d-%m-%y")

if [ -f "lottery.$DATE" ]
then
        rm lottery.$DATE
        touch lottery.$DATE
else
        touch lottery.$DATE
fi

while true
do
	num=`echo $((1 + RANDOM % 50))`
	grep -w $num lottery.$DATE > /dev/null
	exit=$(echo $?)
	if [[ ($exit == 0)]]
	then
		continue
	else
		echo $((1 + RANDOM % 50)) >> lottery.$DATE
		ball=$(wc -l lottery.$DATE | awk '{print$1}')
		if [ $ball -gt 4 ]
		then
			echo $((1 + RANDOM % 10)) >> lottery.$DATE
			break
		else
			continue
		fi
	fi
done

