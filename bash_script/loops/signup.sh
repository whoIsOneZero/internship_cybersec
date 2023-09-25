#!/bin/bash

### A signup page ###

echo "Welcome!"
echo "Follow the prompts"

echo "Enter the following details"
read -p "Name: " name
read -p "Age: " age
read -p "Email: " email
read -p "Username: " username
read -sp "Password: " password1
printf "\n"
read -sp "Re-enter your password: " password2
printf "\n"

chances=3

while [ $password1 != $password2 ]
do
	echo -e "\nPasswords mismatch"
	chances=$(($chances - 1))
	echo -e "You have $chances attempt(s) remaining\n"

	if [ $chances -eq 0 ]
	then
		echo "You made 3 incorrect attempts"
		exit 0
	fi

	read -sp "Re-enter your new password: " password2
	echo -e "\nChecking passwords"

	sleep 1
done

#encrypt_pass=$(echo $password1 | sha256sum | awk {'print $1'})
encrypt_pass=$(echo $password1 | sha256sum)

#REMOVE UNWANTED CHAR#
edit_pass=$(echo $encrypt_pass | cut -d "-" -d " " -d " " -f 1)

echo -e "\nRegistration successful"

### Encrypt the passwords using sha256sum
### Example $echo "name" | sha256sum
### see $openssl --help

# ---> ASSIGNMENT <--- #
### Name, age, username, email, encrypted password >> database.db

if [ -f database.db ]
then
	printf "$name\t $age\t $username\t $email\t \t$edit_pass\n\n" >> database.db
else
	printf "[NAME]\t\t [AGE]\t [USERNAME] \t [EMAIL] \t\t\t\t\t [ENCR. PASS]\n" >> database.db
	printf "$name\t $age\t $username\t $email\t \t$edit_pass\n\n" >> database.db
fi

