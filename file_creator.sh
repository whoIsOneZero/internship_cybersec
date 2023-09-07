#!/bin/bash

#--> Creates a new file in a specified directory

printf "Enter your file name: "
read file_name

printf "Enter the dir to create the file: "
read file_loc

## Create file ##
`touch $file_loc/$file_name`

printf "$file_name created at $file_loc"
