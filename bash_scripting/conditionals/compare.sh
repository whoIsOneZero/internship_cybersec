#!/bin/bash

## A script to compare diff values

## Syntax
# if [ condition ]
# then 
# 	**do something
# else
#	**do something
# fi

#location="Accra"

# Give a prompt, then read the input and store in 'location'
read -p "Enter your location: " location

if [ $location == "Accra" ]
then
	echo "You're in Accra"
elif [ $location == "Makola" ]
then
	echo "What are you doing in the market?"
else
	echo "You're lost"
fi
