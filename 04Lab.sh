#!/bin/bash

# Script: Ops 201 Class 04 Ops Challenge Solution
# Author: Alexander Echols                      
# Date of latest revision: 28 July 2022      
# Purpose:
#   *Create four directories using the script.
# mkdir dir1 dir2 dir3 dir4
#   *Load each directory path into an array.
DIRECTORIES=(dir1 dir2 dir3 dir4)
#   *create a new .txt file within each directory by referencing the directory with array indices, not the literal directory path.
#touch ${DIRECTORIES}/new.txt
for i in ${DIRECTORIES[@]} 
do
    mkdir "$i"
    touch "$i/new.txt"
done
#   *Test & validate.