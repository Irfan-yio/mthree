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

echo "Please enter 5-10 integers."

count=0

while true
do
	read input
	numchecker
	if [[ ($exit == 0 && $exit2 != 0 && $exit3 != 0) ]]
	then
		((count++))
		value_array+=($input)
		#limit=$(echo ${#value_array[@]})
		if [ $count -lt 5 ]
		then
			continue
		else
			if [ $count -gt 9 ]
			then
				break
			else
				echo "Would you like to stop now? (Y/N)"
				read input
				if [ $input == Y ]
				then
					break
				else
					continue
				fi
			fi
		fi
	else
		echo "That is not an integer."
		continue
	fi
done
limit=$(echo ${#value_array[@]})

pri=$(echo ${value_array[*]})
echo "The values you entered are: $pri"

mult=$(($(IFS="*"; echo "${value_array[*]}")))
echo "The product of the integers is $mult"

sum=$(($(IFS="+"; echo "${value_array[*]}")))

avg=$(($sum / $limit))
echo "The average of the intergers is $avg"
echo "The sum of the integers is $sum"

#if [ -f "array.file" ]
#then
 #       rm array.file
 #       touch array.file
#else
 #       touch array.file
#fi

#for i in "${value_array[*]}"
#do
#	echo $i >> array.file
#done
#sort -n array.file

#min=`awk '{print $1}' array.file`
#max=`awk '{print $NF}' array.file`


IFS=$'\n' sorted=($(sort <<<"${#value_array[@]}")); unset IFS
min=$(echo ${value_array[0]})
max=$(echo ${value_array[-1]})

echo "The min of the integers is $min"
echo "The max of the integers is $max"

