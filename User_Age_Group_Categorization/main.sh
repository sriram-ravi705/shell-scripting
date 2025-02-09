#!/bin/bash

age_group(){
    user_age=$1
    if [[ $user_age -lt 13 ]]; then
        echo "Child"
    elif [[ $user_age -ge 13 && $user_age -le 19 ]]; then
        echo "Teenager"
    elif [[ $user_age -ge 20 && $user_age -le 64 ]]; then
        echo "Teenager"
    else
        echo "senior"
    fi
}

echo "Welcome to User Age Group Categorization"
read -p "Enter your age: " user_age

if [[ -z $user_age ]]; then
    echo "please enter user age"
elif ! [[ $user_age =~ ^[0-9]+$ ]]; then
    echo "enter a number"
else
    age_group $user_age
fi