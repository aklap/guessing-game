all: README.md clean

README.md:
	touch README.md
	echo "Guessing Game\n--------------" > README.md
	echo "\nLast run: $$(date)" >> README.md
	echo "\nLines of code: $$(grep -vc '^$$' guessinggame.sh)"\
	 >> README.md

clean:
	rm README.md