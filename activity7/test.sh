#!/bin/sh

QA_array+=("In the film “Finding Nemo”, Nemo is a pufferfish.;F" "Mount Kilimanjaro is the world’s tallest peak.;F" "Venezuela is home to the world’s highest waterfall.;T" "The capital of Australia is Sydney.;F" "The longest river in the world is the Amazon River.;F" "Polar bears can only live in the Arctic region, not in the Antarctic.;T" "The United Kingdom is almost the same size as France.;F" "The moon is wider than Australia.;F" "Zeus is referred to as the king of the Greek gods and goddesses.;T" "The goat is used to symbolize the zodiac sign, Capricorn.;T")

echo "Welcome to the true or false quiz! There are 10 questions. Please answer with either \"T\" or \"F\"."

count=0

for i in "${QA_array[@]}"
do
	QUES=`echo $i | awk -F';' '{print$1}'`
	ANS=`echo $i | awk -F';' '{print$2}'`
	echo $QUES
	read input
	if [ $input == $ANS ]
	then
		((count++))
		echo "Correct!"
	else
		echo "Incorrect."
		continue
	fi
done

if [ $count == 1 ]
then
	echo "You got $count question correct. Thank you for playing!"
else
	echo "You got $count questions correct. Thank you for playing!"
fi

