#!/bin/sh

QA_array=('In the film “Finding Nemo”, Nemo is a pufferfish.' 'F' 'Mount Kilimanjaro is the world’s tallest peak.' 'F' 'Venezuela is home to the world’s highest waterfall.' 'T' 'The capital of Australia is Sydney.' 'F' 'The longest river in the world is the Amazon River.' 'F' 'Polar bears can only live in the Arctic region, not in the Antarctic.' 'T' 'The United Kingdom is almost the same size as France.' 'F' 'The moon is wider than Australia.' 'F' 'Zeus is referred to as the king of the Greek gods and goddesses.' 'T' 'The goat is used to symbolize the zodiac sign, Capricorn.' 'T')

echo "Welcome to the true or false quiz! There are 10 questions. Please answer with either \"T\" or \"F\"."

while true
do
	echo ${QA_array[0]}
	read -p "Answer: " input0
	if [ $input0 == "F" ]
	then
		echo "Correct!"
		echo ${QA_array[2]}
		read -p "Answer: " input2
		if [ $input2 == "F" ]
		then
			echo "Correct!"
			echo ${QA_array[4]}
			read -p "Answer: " input4
			if [ $input4 == "T" ]
			then
				echo "Correct!"
				echo ${QA_array[6]}
				read -p "Answer: " input6
				if [ $input6 == "F" ]
				then
					echo "Correct!"
					echo ${QA_array[8]}
					read -p "Answer: " input8
					if [ $input8 == "F" ]
					then
						echo "Correct!"
						echo ${QA_array[10]}
						read -p "Answer: " input10
						if [ $input10 == "T" ]
						then
							echo "Correct!"
							echo ${QA_array[12]}
							read -p "Answer: " input12
							if [ $input12 == "F" ]
							then
								echo "Correct!"
								echo ${QA_array[14]}
								read -p "Answer: " input14
								if [ $input14 == "F" ]
								then
									echo "Correct!"
									echo ${QA_array[16]}
									read -p "Answer: " input16
									if [ $input16 == "T" ]
									then
										echo "Correct!"
										echo ${QA_array[18]}
										read -p "Answer: " input18
										if [ $input18 == "T" ]
										then
											echo "Correct! You finished the quiz!"
											break

										else
											echo "Incorrect."
											continue
										fi
									else
										echo "Incorrect."
										continue
									fi
								else
									echo "Incorrect."
									continue
								fi
							else
								echo "Incorrect."
								continue
							fi
						else
							echo "Incorrect."
							continue
						fi
					else
						echo "Incorrect."
						continue
					fi
				else
					echo "Incorrect."
					continue
				fi
			else
				echo "Incorrect."
				continue
			fi
		else
			echo "Incorrect."
			continue
		fi

	else
		echo "Incorrect."
		continue
	fi
done
