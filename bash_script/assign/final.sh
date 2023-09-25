#!/bin/bash

### A SCRIPT THAT CREATES A PHONEBOOK ###

# Data Entry #
read -p "First Name: " f_name
read -p "Last Name: " l_name
read -p "Other Names: " o_name
read -p "Location: " loc
printf "Phone Num. (Must be exactly 10 digits)\n"
read -p "Phone Number: " num

# Validation for phone number #
### $ echo "$num" | wc -m ###

confirm=`echo "$num" | wc -m`
if [ $confirm -ne 11 ]
then
	echo "Invalid"
	echo "$confirm"
	else
		echo "Valid"
		echo "$confirm"
fi

