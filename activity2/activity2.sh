#!/bin/sh

DATEF=$(date +%Y%m%d)
split="-"
testfile=*$DATEF
basename=*.sh

for i in `ls`
do
	if [[ ($i != $testfile && $i != $basename) ]]
	then
		mv $i $i$split$DATEF
	fi
done
exit 0
