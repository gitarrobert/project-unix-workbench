all: README.md

README.md:
	touch README.md
	echo "The title of the Project: guessinggame" > README.md
	echo "The date and time at which make was run:" >> README.md
	date -R >> README.md #date and time at which make was run
	echo "The number of lines of code in guessinggame:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
