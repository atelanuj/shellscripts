#!/bin/bash

echo "your repo links is $repo"
git clone $repo
variable=$(echo $repo | cut -d '/' -f5 | cut -d '.' -f1 )
cd $variable
ls -lrth


#This script will Clone any repo and open and list the contents