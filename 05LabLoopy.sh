#!/bin/bash

# Script: Ops 201 Class 05 Ops Challenges: Loopy
# Author: Alexander Echols                      
# Date of latest revision: 29 July 2022      
# Purpose: Write a script (using a loop) that displays running processes, asks the user for a PID, then kills the process with that PID.


# Main
answer="y"
while [ $answer == "y" ]
# ask user for PID
 do 
    ps aux
    echo "select the PID you want to kill? or exit with 'ctrl+c'."
# put the PID in the variable p
    read p
# kill the process with PID
    sudo kill -9 $p
    echo "$p has been killed"
    echo "do you want to continue? y/n"
    read answer    
done
# End
# while a condition is true
#run the script
# if the condition is not true
#end script 