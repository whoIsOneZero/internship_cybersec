#!/bin/bash

## A script for comparing numbers
## <    >    =    !=
##-lt  -gt  -eq  -nq

err_msg="Oops. Out of the range :("

echo "I'm thinking of an integer b/n 0 and 99. Guess the number."
read -p ">>> " guess

if [ $guess -gt 99 ]
then
	echo "$err_msg"
elif [ $guess -lt 0 ]
then
	echo "$err_msg"
elif [ $guess -eq 17 ]
then
	echo "You win!"
elif  [ $guess -eq 38 ]
then
	echo "You win!"
else
	echo "Try again :)"
fi
