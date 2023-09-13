#!/bin/bash

### Login file to the database ###
# $man test #

### $man grep ###
### Global Regular ExPressions ###

if [ -f database.db ] ## Can use absolute path
then
	read -p "Enter your username: " username
	read -sp "Enter your password: " password

	encrypt_pass=$(echo $password | sha256sum)

	# REMOVE UNWANTED CHAR #
	edit_pass=$(echo $encrypt_pass | cut -d "-" -d " " -d " " -f 1)

	# IF USERNAME NOT FOUND, DON'T CHECK FOR PASSWORD #
	grep -c $username database.db
	if [ $? -eq 0 ]
	then
		grep -c $edit_pass database.db
	else
		echo "You don't have an account with us."
		echo "Run ./signup.sh to create an account."
		exit 0
	fi
	

	# USERNAME FOUND, SEARCH FOR PASSWORD #
	grep -c $edit_pass database.db 

	#$? - Check the return value of grep #
	if [ $? -eq 0 ]
	then
		### Display info ###
                clear
                printf "\n\t\t\t\t\tPLEASE WAIT."
                sleep 1
                clear
                printf "\n\t\t\t\t\tPLEASE WAIT.."
                sleep 1
                clear
                printf "\n\t\t\t\t\tPLEASE WAIT..."
                sleep 1
                clear

		echo "Login Successful."

		lg_time=$(date +%r)
		lg_date=$(date +%F)
		
		## Save details ##
		if [ -f login_user.db ]
		then
			printf "$username\t $lg_date\t $lg_time\n" >> login_user.db
		else
			printf "[USERNAME]\t [LOGIN DATE] \t [LOGIN TIME]\n" >> login_user.db
			printf "$username\t $lg_date\t $lg_time\n" >> login_user.db
		fi
	else
		### Display info ###
                clear
                printf "\n\t\t\t\t\tPLEASE WAIT."
                sleep 1
                clear
                printf "\n\t\t\t\t\tPLEASE WAIT.."
                sleep 1
                clear
                printf "\n\t\t\t\t\tPLEASE WAIT..."
                sleep 1
                clear

		echo "Incorrect password!"
	fi

else
	echo "Could not fetch database."
fi
