#!/bin/bash

### A SIMPLE TASK USING WHILE LOOPS ###

echo "Welcome!"
read -p "Enter the lower value: " lower
read -p "Enter the uppper value: " upper
read -p "Enter value to increment by: " incr

while [ $lower -lt $(($upper - 1)) ]
do 
	lower=$(($lower + $incr))
	echo -e "\nThe new value is: $lower"
	sleep 1
done
