#!/usr/bin/env bash

function game {
  local answer=$(ls -la | wc -l)
  local solved=false

  while [[ $solved = false ]]
  do
    echo "Please enter a guess:"
    read response

    if [[ $response -lt $answer ]]
    then
      echo "Your guess was too low."
    elif [[ $response -gt $answer ]]
    then
      echo "Your guess was too high."
    else
      echo "Congratulations, that was the correct answer!"
      solved=true
    fi
  done
}

echo "How many files are in the current directory?"
game