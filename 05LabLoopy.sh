#!/bin/bash

# Script: Ops 201 Class 05 Ops Challenges: Loopy
# Author: Alexander Echols                      
# Date of latest revision: 29 July 2022      
# Purpose: Write a script (using a loop) that displays running processes, asks the user for a PID, then kills the process with that PID.


# Main
# create a variable and assign it 'y' for my boolean
answer="y"
# start a while loop to work for as long as the 'answer' variable is y
while [ $answer == "y" ]
# ask user for PID
 do 
 # run the ps aux command to list running processes
    ps aux
# ask what to kill
    echo "select the PID you want to kill? or exit with 'ctrl+c'."
# put the PID in the variable p
    read p
# kill the process with PID
    sudo kill -9 $p
# tell the user what happened
    echo "$p has been killed"
# ask if they want to do another.
    echo "do you want to continue? y/n"
# depending on the answer either end the process or start the loop over.
    read answer    
done
# End