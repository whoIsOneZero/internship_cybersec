#!/bin/bash

#--> Creates an empty file <--

touch "$1" #Argument is treated as a single indivisible entity
printf "New file with name $1 created"
