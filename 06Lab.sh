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
# ask if they want to look for something
echo "are you looking for something (y/n)"
# store answer in "looking"
read looking
if [ $looking == n ]
    then 
        echo "Fine, by then"
fi
# start a while loop that works as long as looking is y
while [[ $looking == y ]]
do    
# ask what file they are looking for
    echo "what file do you wish to find?"
    # show the options
    echo ${ARRAY[@]}
    # store answer in vairable 
    read file
# start the if statement to search for the file
    if [ -f $file ]
        then
            echo "Yay, It exists"
            echo "is there another file you wish to find?"
    else 
    # let the user know the file doesn't exist and ask if they want to create it.
        echo "Shucks, this doesn't exist. Would you like to create it (y/n)?"
        # store answer in a vairable named answer
        read answer
        # if answer is y then create the file and let the user know the file was created.
        if [ $answer == y ]
        then
            touch $file
            echo " $file was created"
            echo " do you want to create another file?(y/n)"
            read leave
            if [ $leave == n ]
            then looking=n 
            fi
        fi
    fi
done