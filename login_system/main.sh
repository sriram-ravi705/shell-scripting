#!/bin/bash

USERNAME="sriram"
PASSWORD="password123"

login_checker(){
    userin_username=$1
    passin_username=$2

    if [[ $userin_username != $USERNAME && $passin_username != $PASSWORD ]]; then
        echo "please enter valid credientals"
    else
        echo "user login successfully"
        exit 0
    fi
}

echo "welcome to the login checker system"
read -p "enter username:- " userin_username
read -sp "enter password:- " passin_username
echo

if [[ -z userin_username ]]; then
    echo "please enter username"
elif [[ -z passin_username ]]; then
    echo "please enter password"
else
    login_checker $userin_username $passin_username
fi