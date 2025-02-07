#!/bin/bash

SECRET_NUMBER=42

start_game() {
    echo "Welcome to the Number Guessing Game!"
    echo "I am thinking of a number between 1 and 100. Can you guess what it is?"

    attempts=0

    while true; do
        attempts=$((attempts+1))
        read -p "Enter your guess: " user_guess
        if ! [[ $user_guess =~ ^[0-9]+$ ]]; then
            echo "Please enter a valid number."
            continue
        fi

         if [[ "$user_guess" -eq "$SECRET_NUMBER" ]]; then
            echo "Congratulations! You guessed the correct number $SECRET_NUMBER in $attempts attempts."
            break
        elif [[ "$user_guess" -lt "$SECRET_NUMBER" ]]; then
            echo "Too low! Try again."
        elif [[ "$user_guess" -gt "$SECRET_NUMBER" ]]; then
            echo "Too high! Try again."
        fi
    done
}

echo "Do you want to play the Number Guessing Game? (yes or no)"
read play_game

if [[ -z "$play_game" ]]; then
    echo "You didn't enter anything. Exiting the game."
elif [[ "$play_game" == "yes" ]]; then
    start_game
else
    echo "Goodbye! Maybe next time."
fi