#!/bin/bash

# Script: Ops 201 Class 13 Ops Challenges: analyze my domain
# Author: Alexander Echols                      
# Date of latest revision: 10 Aug 2022      
# Purpose: script that asks a user to type a domain, then displays information about the typed domain

#Script Begin 
# initial start question
function wildtime {
        #ask for a domain name
        echo "what website are ya lookin for?"
        #store the answer in place
        read place
        # run Whois on the response stored in place
        whois $place >> domain.txt
        # run dig on the response stored in place
        dig $place >> domain.txt
        # run host on the response stored in place
        host $place >> domain.txt
        # run nslookup on the response stored in place
        nslookup $place >> domain.txt
        #output the results of all to a txt file
        nano domain.txt
        } 
        wildtime