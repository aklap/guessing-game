README.md:
  touch README.md
  echo "Guessing Game\n--------------" > README.md
  echo "\nLast run: $$(date)" >> README.md
  echo "\nLines of code: $$(cat guessinggame.sh | wc -l)" >> README.md