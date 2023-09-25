#!/bin/bash

## A platform for registration

echo "Welcome to our club!"
echo "Provide your details"

read -p "Name: " name
read -p "Gender (M/F): " gender
read -p "Age: " age
read -p "Location: " location

## Gender requirements ##
if [ $gender == "M" ]
then
	echo -e "\nWelcome to the men's club."
	printf "We meet at the library.\n"
elif [ $gender == "F" ]
then
	echo -e "\nWelcome to the women's club"
	printf "We meet at the PB.\n"
else
	echo -e "\nThis gender cannot be registered."
	echo "This platform will now be closed."

	sleep 2
	exit 0
fi

## Age requirement ##
if [ $age -gt 17 ]
then
	echo "Age requirement met"
	echo "Registering user. Please wait..."
	sleep 3
else
	echo "You have to be 18 years or above"
	echo "The platform will now close"
	sleep 2
	exit 0

fi

## Successful registration ##
echo -e "\nSuccessfully registered."
sleep 1

printf "\nMembership details"

printf "Name\tAge\tGender\tLocation\n"
printf "$name\t$age\t$gender\t$location\n"
	
