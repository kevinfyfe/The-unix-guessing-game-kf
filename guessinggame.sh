# The Guessing Game by Kevin Fyfe
# Success equals guessing the correct number of files in the directory , at which point the game will end.

# Set variable for directory file count and remove the now file row from the count when using ls -l.
filecount=$(ls -l | wc -l)
let filecount=$filecount-1
echo $filecount

# Function to wish the player the best of luck using his their preferred name
function goodluck {
	echo "Best of luck $player1 in trying to complete the game in the minimum number of guesses"
	}
echo "What is your name?"
read player1
goodluck $player1

# Ask the player for his initial guess
echo "Please make your initial guess:"
read guess1

#  Check if the first guess is correct and if not use a while loop to the answer is correct
if [[ $guess1 -ne $filecount ]]
then 
	count=1
	while [ $guess1 -ne $filecount ]
	do
		if [[ $guess1 -gt $filecount ]]
			then echo "That's unlucky, but the guess was too high. Have a lower guess:"
			read guess1
		else echo "That's unlucky, but the guess was too low. Have a higher guess:"
			read guess1
		fi
		let count=$count+1
	done
	echo "Congratulations, we got there in the end. It took $count attempts."
else
	echo "Congratulations, you guessed it in one"
fi
