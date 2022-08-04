#!/bin/bash

# Script: Ops 201 Class 07 Ops Challenges: Sys info
# Author: Alexander Echols                      
# Date of latest revision: 02 Aug 2022      
# Purpose: Write a script that uses lshw to display system info to the screen. 
    #Then using grep, remove irrelevant info and add text to the output inidcating what component it is speaking of
    
# first run lshw
# Remove irrelevant info
echo 'whats my name?'
sudo lshw | grep "alsserver"
echo 'have a peak at the cpu'
lshw | grep -A 7 '*-cpu'
echo 'And here is the Ram'
lshw | grep -A 3 '*-memory'
echo 'This is your display info'
lshw | grep -A 10 '*-display'
echo 'Finally here is your Network adapter'
lshw | grep -A 15 '*-network'
# add text to clearfie info displayed