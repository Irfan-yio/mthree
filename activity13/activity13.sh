#!/bin/sh

function compare()
{
local test_array1=$1
local test_array2=$2

declare -a diff_array
count=0

for i in ${test_array1[*]}
do
	tester="true"
	for j in ${test_array2[*]}
	do
		if [ $i == $j ]
		then
			tester="false"
			break
		fi
	done

	if [ $tester == "true" ]
	then
		diff_array[$count]=$i
		((count++))
	fi
done

for k in ${diff_array[*]}
do
	echo $k
done
}

printf "1\n2\n4\n6" > file1
printf "1\n2\n89\n6\n7" > file2

varfile1=$(cat file1)
varfile2=$(cat file2)

declare -a file1_array
i=0
for x in $varfile1
do
	file1_array[$i]=$x
	((i++))
done

declare -a file2_array
i=0
for y in $varfile1
do
        file1_array[$i]=$y
        ((i++))
done

echo "Only in file 1:"
compare file1_array file2_array

echo "Only in file 2:"
compare file2_array file1_array

