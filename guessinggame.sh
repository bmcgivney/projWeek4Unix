#!/usr/bin/env bash
# Filename guessinggame.sh

filesnumber=$(ls |wc -l)
result=0
incorrect=0
correct=1

function verify_guess {
    if [[ $guess -lt $filesnumber ]]
    then
        echo "Your guess is too low, try again"
    elif [[ $guess -gt $filesnumber ]]
    then
        echo "Your guess is too high, try again"
    else
        echo "Congratulations your guess is correct, there is $filesnumber files in current folder"
        let result=result+1
    fi
}
echo "This is the guessing game, you shall guess the number of files in the current folder."


while [[ $result -ne $correct ]]
do
    echo "Please provide your guess: "
    read guess
    verify_guess
done

