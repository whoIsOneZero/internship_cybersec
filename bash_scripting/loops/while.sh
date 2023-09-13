#!/bin/bash

num=10

while [ $num -gt 2 ]
do
	echo "Inside the loop"
	num=$(($num - 1))
	echo -e "New value is: $num\n"

	sleep 1
done

echo -e "Outside the loop\n"
