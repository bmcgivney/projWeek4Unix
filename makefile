all: README.md

README.md:
	touch README.md
	echo "# Project: guessinggame" > README.md
	echo "## README.md was created on: " >> README.md
	date >> README.md
	echo "## guessinggame.sh contains the following number of lines: " >> README.md
	cat guessinggame.sh | wc -l >> README.md


clean: 
	rm README.md

