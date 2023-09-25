#!/bin/bash

### A simple task using case ###

echo "Welcome!"
read -p "What's your name? " name
name=$(echo $name | tr [:upper:] [:lower:]) ### To lowercase

read -p "What's the first 3 digits of your index number? " index

### Index number check ###
case $index in
	820)
		college="COE"
		;;
	920)
		college="COHSS"
		;;
	420)
		college="KSB"
		;;
	*)
		college="unknown"
esac

case $name in
	"kwasi" | "kwame" | "yaw" | "kwadwo")
		gender="male"
		;;
	"ama" | "akosua" | "adwoa" | "yaa")
		gender="female"
		;;
	*)
		gender="unknown"
esac

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


if [[ $gender == "unknown" ]]
then
	echo "Invalid name and index number"
	sleep 1
	exit 0
fi

printf "COLLEGE \t\t\t GENDER\n"
printf "$college \t\t\t\t $gender\n"
