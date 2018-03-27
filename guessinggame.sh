#!/usr/bin/env bash
# File: guessinggame.sh

function compare_nr {

  if [[ $response -lt $numberOfFiles ]]; then
    echo -e "Your guess was too low [${RED}$response${NC}]. Please try again..."
  elif [[ $response -gt $numberOfFiles ]]; then
    echo -e "Your guess was too high [${RED}$response${NC}]. Please try again..."
  else
    is_equal=0
    echo -e "Congratulations! You guessed correctly [${GREEN}$response${NC}]."
  fi
}

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

numberOfFiles=$(ls -la | wc -l);
is_equal=1

while [[ $is_equal -ne 0 ]]; do
  read -p "Please guess the number of files in this directory: " response

  compare_nr $response
done

echo "End program"