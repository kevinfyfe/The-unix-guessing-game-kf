all: readme.md

readme.md:
	echo "The Guessing Game - By Kevin Fyfe" > readme.md
	echo ""
	echo "The date and time of running the program:" >> readme.md
	date >> readme.md
	echo ""
	echo "The program contains the following number of rows:" >> readme.md
	grep -c "" guessinggame.sh >> readme.md

clean:
	rm readme.md
