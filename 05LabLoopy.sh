#!/bin/bash

# Script: Ops 201 Class 05 Ops Challenges: Loopy
# Author: Alexander Echols                      
# Date of latest revision: 29 July 2022      
# Purpose: Write a script (using a loop) that displays running processes, asks the user for a PID, then kills the process with that PID.


# Main
# to display running processess
ps aux
# ask user for PID
echo "what is your PID"
# put the PID in the variable p
read p
# kill the process with PID
sudo kill -9 $p 
# End