#!/bin/bash

# Script: Ops 201 Class 06 Ops Challenges: Conditional conditions.
# Author: Alexander Echols.                    
# Date of latest revision: 01 Aug 2022.      
# Purpose: Write a script (using an array, a loop, and one conditional) that detects if a file or directory exists, and if it doesnt find it, it creates one.

# Main
# create a file with a path that doesn't exist
# file=/home/als_username/ops_challenges/documentA.txt
# create an array of files
ARRAY=(this.txt that.txt those.txt)
echo "are you looking for something (y/n)"
read looking
while [[ $looking == y ]]
do    
    echo "what file do you wish to find?"
    echo ${ARRAY[@]}
    read file
# start the if statement to search for the file
    if [ -f $file ]
        then
            echo "Yay, It exists"
    else 
        echo "Shucks, this doesn't exist. Would you like to create it (y/n)?"
        read answer
        if [ $answer == y ]
        then
            touch $file
            echo " $file was created"
        fi
    fi
done