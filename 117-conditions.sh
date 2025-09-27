#!/bin/bash
echo "please enter the number"
read NUMBER

if [$((NUMBER % 2)) -eq 0 ]; then 
    echo "given number is $NUMBER even"
else 
 echo "giver number is $NUMBER odd
 fi