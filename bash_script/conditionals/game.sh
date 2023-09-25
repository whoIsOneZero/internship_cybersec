#!/bin/bash

## A script for comparing numbers

err_msg="Oops. Out of the range :("

echo "I'm thinking of an integer b/n 0 and 99. Guess the number."
read -p ">>> " guess

if (($guess > 99))
then
	echo "$err_msg"
elif (($guess < 0))
then
	echo "$err_msg"
elif (($guess == 17 ))
then
	echo "You win!"
elif (($guess == 38))
then
	echo "You win!"
else
	echo "Try again :)"
fi
