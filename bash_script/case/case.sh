#!/bin/bash

## Working with case ###

read -p "Enter the name of your City: " city

# Translate all UPPERCASE strings to lowercase #

city=$(echo $city | tr [:upper:] [:lower:])

case $city in
	"kumasi")
		echo "You're in Ashanti Region"
		;;
	"accra")
		echo "You're in Greater Accra Region"
		;;
	"sunyani")
		echo "You're in Ahafo Region"
		;;
	"tamale")
		echo "You're in Northern Region"
		;;
	*)
		echo "Cannot identify your city"
esac
