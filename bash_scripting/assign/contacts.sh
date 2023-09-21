#!/bin/bash

### A SCRIPT THAT CREATES A PHONEBOOK ###

echo -e "\t\t\t*** WEETCH Contacts***\nPlease select an option (1 or 2)."
printf "[1] Make a new contact entry.\n[2] Make a search.\n"
read -p ">> " choice

if [ "$choice" -lt 1 ] || [ "$choice" -gt 2 ]
then
	printf "\nMaking wrong choices is your secret talent :)\n"
	echo -e "Run the script again.\nExiting."
	sleep 1
	exit 0
fi

### DATA ENTRY ###
if [ $choice == '1' ]
then
	read -p "First Name: " f_name
	read -p "Last Name: " l_name
	read -p "Other Names: " o_name
	read -p "Location: " loc
	printf "Phone Num. (Must be exactly 10 digits)\n"
	read -p "Phone Number: " num

	# Validation for phone number #
	chances=3
	confirm=`echo "$num" | wc -m`

	if [ $confirm -ne 11 ]
	then
		while [ $confirm -ne 11 ]
		do
			echo "Invalid Phone Num."
			chances=$(($chances - 1))
			echo -e "You have $chances attempt(s) remaining\n"

			if [ $chances -eq 0 ]
			then
				echo "Too many incorrect attempts. Please run the program again to make an entry"
				echo "Program exiting"
				sleep 1
				exit 0
			fi

			read -p "Phone Number: " num
			confirm=`echo "$num" | wc -m`
		done
	fi

	### SAVE DETAILS TO PHONEBOOK ###
	echo "Saving details. Please wait."
	sleep 1

	if [ -f PHONEBOOK ]
	then
		printf "$f_name ***\t $l_name ***\t $o_name ***\t $loc ***\t $num ***\n" >> PHONEBOOK
	else
		printf "[FIRST NAME]\t [LAST NAME]\t [OTHER NAMES]\t [LOCATION]\t [PHONE NUM.]\n" >> PHONEBOOK

		printf "$f_name ***\t $l_name ***\t $o_name ***\t $loc ***\t $num ***\n" >> PHONEBOOK
	fi
fi

### SEARCH FOR CONTACT ###
if [ $choice == '2' ]
	OB
then
	echo "Search for contacts."
fi
