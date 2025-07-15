#!/bin/bash

read -p "Enter the number:" n

for (( i=1; i<=n; i++ ))
do
    # Print spaces
    for (( j=n; j>i; j-- ))
    do
        echo -n " "
    done
    
    # Print stars
    for (( k=1; k<=2*i-1; k++ ))
    do
        echo -n "*"
    done
    
    # New line 
    echo ""
done
