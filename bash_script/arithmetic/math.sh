#!/bin/bash

## Math stuff

## Simple addition
num1=10
num2=8

sum=$(($num1 + $num2))
echo "The sum of $num1 and $num2 is: $sum"

mul=$(($num1 * $num2))
echo "The product of $num1 and $num2 is: $mul"

div=$(($num1 / $num2))
echo "The quotient of $num1 and $num2 is $div"

division=$(echo "scale=2; $num1/$num2" | bc)
echo "The result using bc is: $division"

mate=`mate-calc -s $num1/$num2`
echo "The result using mate is $mate"

sub=$(($num1 - $num2))
echo "The difference of $num1 and $num2 is: $sub"
