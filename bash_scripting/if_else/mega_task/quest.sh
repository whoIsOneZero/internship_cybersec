#!/bin/bash

### Questionnaire for eligibility to book a table ###

s="Successful"
ns="Unsuccessful"

# Basic Info #
echo "Fill the questionnaire below to book a table"
read -p "Name: " name
read -p "Phone num: " phone
read -p "Age: " age
read -p "How many guardians? Enter 0 if none: " guard
read -p "How many are you in the group? Enter 0 if you're alone: " group

### Age 12 and below ###
if [[ $age -lt 13 && $guard -gt 0 ]]
then
	status=$s
elif [[ $age -lt 13 && $group -gt 3 ]]
then
	status=$s
else
	status=$ns
fi

### Age 13 to 17 ###
if [[ $age -gt 12 && $age -lt 18 ]]
then
	if [ $group -gt 2 ]
		then
			status=$s
		else
			status=$ns
	fi
fi

### Age 18 to 60 ###
if [[ $age -gt 17 && $age -lt 61 ]]
then
	status=$s
fi

### Age 61 and above ###
if [[ $age -gt 60 && $guard -gt 0 ]]
then 
	status=$s
fi

### REGISTRATION DETAILS ###
printf "\n[CUST. NAME]\t[PHONE]\t[AGE]\t[GUARDIAN]\t[NO. IN GROUP]\t[REG. STATUS]\n"
printf "\n|$name|\t$phone|\t$age|\t$guard|\t$group|\t$status|\n"


echo -e "\n[CUST. NAME]\t[PHONE]\t[AGE]\t[GUARDIAN]\t[NO. IN GROUP]\t[REG. STATUS]\n" >> SOCIALS.db
echo -e "\n|$name|\t$phone|\t$age|\t$guard|\t$group|\t$status|\n" >> SOCIALS.db
