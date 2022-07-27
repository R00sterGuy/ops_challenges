#!/bin/bash

# Script: Ops 201 Class 03 log in history
# Author: Alexander Echols                      
# Date of latest revision: 27 July 2022      
# Purpose: Print the login history of the users on this computer

#main code start
function user_history {
    sudo last
}

user_history

UH="There its done"
echo $UH
#main code end