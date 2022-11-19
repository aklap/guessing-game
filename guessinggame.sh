#!/usr/bin/env bash

function game {
local guess
local answer=$(ls | wc -l)

echo "Guess how many files are in the current directory"
read response

while [[ $response -ne $answer ]]
do
  if [[ $response -lt $answer ]]
  then
    hint="too low"
  elif [[ $response -gt $answer ]]
    then
      hint="too high"
    fi
    echo "$hint"
    game
  done
}

game
echo "correct"